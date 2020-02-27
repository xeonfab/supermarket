class SuperheroesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new]

  def index
    if params[:query].present?
      # sql_query = " \
      #   superheroes.name @@ :query \
      #   OR superheroes.location @@ :query \
      #   OR users.first_name @@ :query \
      #   OR users.last_name @@ :query \
      # "
      # @superheroes = Superhero.joins(:user).where(sql_query, query: "%#{params[:query]}%")
      terms = params[:query].gsub(/\s+/m, ' ').strip.split(" ")
      @superheroes = []
      terms.each do |term|
        @superheroes << Superhero.global_search(term).to_a
      end
      @superheroes = @superheroes.flatten

    else
      @superheroes = Superhero.all
    end
    # @superheroes = Superhero.geocoded #returns superheroes with coordinates
    @markers = @superheroes.map do |superhero|
      {
        lat: superhero.latitude,
        lng: superhero.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { superhero: superhero })
      }
    end
  end


  def show
    @superhero = Superhero.find(params[:id])
    @booking = Booking.new
    @reviews = Review.joins(booking: :superhero).where("bookings.superhero_id" => @superhero.id)
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    @superhero.user = current_user
    if @superhero.save!
      redirect_to superheroes_path(@superhero)
    else
      render :new
    end
  end

  def edit
     @superhero = Superhero.find(params[:id])
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superhero.update(superhero_params)

    redirect_to account_my_superheroes_path
  end

  def destroy
    @superhero = Superhero.find(params[:id])
    @superhero.destroy
    redirect_to account_my_superheroes_path
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :description, :age, :superpower, :strength, :brains, :speed, :price, :location, :photo)
  end

end

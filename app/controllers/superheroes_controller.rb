class SuperheroesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new]

  def index
    if params[:query].present?
    @superheroes = Superhero.global_search(params[:query])
    # @superheroes = Superhero.geocoded #returns superheroes with coordinates
    @markers = @superheroes.map do |superhero|
      {
        lat: superhero.latitude,
        lng: superhero.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { superhero: superhero })
      }
    end
    else
      @superheroes = Superhero.all
    end
  end


  def show
    @superhero = Superhero.find(params[:id])
    @booking = Booking.new

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

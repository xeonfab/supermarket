class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: [ :home, :my_superheroes ]

 def home
   if params[:query].present?
    # sql_query = " \
    #   superheroes.name @@ :query \
    #   OR superheroes.location @@ :query \
    #   OR users.first_name @@ :query \
    #   OR users.last_name @@ :query \
    # "
    # @superheroes = Superhero.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    @superheroes = Superhero.global_search(params[:query])
   else
     @superheroes = Superhero.all
   end

    # @superheroes = Superhero.geocoded #returns superheroes with coordinates
    # @markers = @superheroes.map do |superhero|
    #   {
    #     lat: superhero.latitude,
    #     lng: superhero.longitude,
    #     infoWindow: render_to_string(partial: "info_window", locals: { superhero: superhero })
    #   }

end

  def my_superheroes
    @my_superheroes = Superhero.where(user: current_user)
  end

  def my_bookings
      @my_bookings = Booking.where(user: current_user)
  end

  def destroy
    @superhero = Superhero.find(params[:id])
    @superhero.destroy
    redirect_to superheroes_path
  end

end

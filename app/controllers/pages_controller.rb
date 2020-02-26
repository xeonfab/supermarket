class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: [ :home, :my_superheroes ]

  def home
    @superheroes = Superhero.all
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

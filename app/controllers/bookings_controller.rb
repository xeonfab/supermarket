class BookingsController < ApplicationController

  def index
  end

  def show


  end

 def create
    @superhero = Superhero.find(params[:superhero_id])
    @booking = Booking.new(booking_params)
    @booking.superhero = @superhero
    @booking.user = current_user
    if @booking.save!
      redirect_to superhero_booking_path(@superhero, @booking)
    else
      @booking = Booking.new
      render "superheroes/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:superhero_id, :user_id, :start_date, :end_date, :price)
  end

end


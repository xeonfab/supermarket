class BookingsController < ApplicationController

  def index
    raise
    @user_bookings = Booking.all.select { |booking| booking.superhero.user == current_user}
    @user_rentals = Booking.all.select { |booking| booking.user == current_user}
  end

  def show
    @booking = Booking.find(params[:id])
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


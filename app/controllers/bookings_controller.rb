class BookingsController < ApplicationController

  def index
  end

  def show
  end

 def create
    @superhero = Superhero.find(params[:superhero_id])
    @booking = Booking.new(booking_params)
    @booking.superhero = @superhero
    if @booking.save
      redirect_to superhero_path(@superhero)
    else
      @review = Review.new
      render "superhero/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:superhero_id, :user_id, :start_date, :end_date, :price)
  end

end


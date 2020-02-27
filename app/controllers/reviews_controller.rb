class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    @superhero = Superhero.find(params[:superhero_id])
  end
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save!
    redirect_to account_my_bookings_path(@booking)
    else
      render :new
    end
  end
  private
  def review_params
    params.require(:review).permit(:description, :rating)
  end
end


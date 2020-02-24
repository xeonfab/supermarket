class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: :home

  def home
  end

  def show_owner_bookings
    if @user.id = current_user
      Booking.all
    else
      render 'user/new'
    end
  end

  def show_renter_bookings
    if @user.id = current_user
         # something awesome
    else
      # something different
      render 'user/new'
    end
  end

end

class BookingsController < ApplicationController
   before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path
    else
        render :new
    end
  end

  def show
  end

end

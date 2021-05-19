class BookingsController < ApplicationController
  def new

    @booking = Booking.new

    @phone = Phone.find(params[:phone_id])

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
    # @booking = Booking.find(params[:id])
    # @booking = Booking.all
  end
end

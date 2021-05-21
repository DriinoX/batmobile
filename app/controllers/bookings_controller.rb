class BookingsController < ApplicationController
  before_action :authenticate_user!
  def new
    @booking = Booking.new
    @phone = Phone.find(params[:phone_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @phone = Phone.find(params[:phone_id])
    @booking.phone_id = @phone.id
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to phone_booking_path(@phone, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.where(user: current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_booking, :end_booking)
  end
end

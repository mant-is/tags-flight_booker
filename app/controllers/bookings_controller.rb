class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to root_path #redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
    params[:num_passengers].to_i.times { @booking.passengers.build }
    @flight = Flight.find(params[:flight_id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end

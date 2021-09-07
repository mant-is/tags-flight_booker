class BookingsController < ApplicationController
  decorates_assigned :booking, :flight

  def index

  end

  def new
    @booking = Booking.new
    params[:num_passengers].to_i.times { @booking.passengers.build }
    @flight = Flight.find(params[:flight_id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      PassengerMailer.with(booking: @booking.id).booking_confirmation.deliver_now
      redirect_to booking_path @booking
    else
      flash.now[:alert] = ''
      flash.now.alert = @booking.errors.full_messages.join(', ')
      @flight = Flight.find(params[:booking][:flight_id])
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def search
    @result = Booking.where(confirmation_number: params[:confirmation_number])
  end


  private
  def booking_params
    params.require(:booking).permit(:flight_id, :confirmation_number, passengers_attributes: [:id, :name, :email])
  end

end

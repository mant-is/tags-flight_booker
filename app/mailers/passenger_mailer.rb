class PassengerMailer < ApplicationMailer
  default from: 'antis.michael@gmail.com'

  def booking_confirmation(*booking)
    @booking = booking.present? ? booking : Booking.find(params[:booking])
    mail(to: -> { @booking.passengers.pluck(:email) }, subject: "Your Recent Booking Confirmation")
  end

end

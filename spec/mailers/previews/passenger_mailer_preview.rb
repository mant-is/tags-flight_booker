# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview

  def booking_confirmation 
    booking = Booking.last
    PassengerMailer.booking_confirmation(booking) 
  end

end

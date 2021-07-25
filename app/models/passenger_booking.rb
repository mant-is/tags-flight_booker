# == Schema Information
#
# Table name: passenger_bookings
#
#  id           :bigint           not null, primary key
#  passenger_id :bigint           not null
#  booking_id   :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class PassengerBooking < ApplicationRecord
  belongs_to :passenger
  belongs_to :booking
end

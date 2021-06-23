class Booking < ApplicationRecord
  belongs_to :flight  
  has_many :passenger_bookings
  has_many :passengers, through: :passenger_bookings, inverse_of: :bookings

  validates :flight, :passengers,  presence: true
  accepts_nested_attributes_for :passengers
end

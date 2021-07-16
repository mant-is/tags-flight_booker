class Passenger < ApplicationRecord
  has_many :passenger_bookings, dependent: :delete_all
  has_many :bookings, through: :passenger_bookings, inverse_of: :passengers
  has_many :flights, through: :bookings

  validates :name, :email, presence: true
end

# == Schema Information
#
# Table name: passengers
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Passenger < ApplicationRecord
  has_many :passenger_bookings, dependent: :delete_all
  has_many :bookings, through: :passenger_bookings, inverse_of: :passengers
  has_many :flights, through: :bookings

  validates :name, :email, presence: true
end

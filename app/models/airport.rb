# == Schema Information
#
# Table name: airports
#
#  id         :bigint           not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Airport < ApplicationRecord
  has_many :inbound_flights, class_name: :Flight, inverse_of: :to_airport
  has_many :outbound_flights, class_name: :Flight, inverse_of: :from_airport
  validates :code, presence: true, 
    length: { is: 3 },
    format: { with: /\A[A-Z]{3}\z/ } 
end


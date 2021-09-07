FactoryBot.define do
  factory :passenger_booking do

    passenger { create(:passenger) }
    booking { create(:booking) }
    
  end
end

FactoryBot.define do
  factory :booking do
    flight
    association :passenger
  end
end

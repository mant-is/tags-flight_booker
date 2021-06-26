FactoryBot.define do
  factory :flight do
    from_airport_id { "" }
    to_airport_id { "" }
    start { DateTime.strptime('06/25/2021', '%m/%d/%Y') }
    duration { 410 }
  end
end


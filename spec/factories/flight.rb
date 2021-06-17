FactoryBot.define do
  factory :flight do
    from_airport_id { "" }
    to_airport_id { "" }
    start { Time.zone.tomorrow }
    duration { 410 }
  end
end


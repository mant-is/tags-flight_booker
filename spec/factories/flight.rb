FactoryBot.define do
  factory :flight do
    from_airport { create(:new_york_airport) }
    to_airport { create(:san_francisco_airport) }
    start { DateTime.strptime('06/25/2021', '%m/%d/%Y') }
    duration { 410 }
  end
end


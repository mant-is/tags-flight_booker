FactoryBot.define do
  factory :airport do
    code { 'PRS' }

    trait :new_york do
      code { 'JFK' }
    end

    trait :san_francisco do
      code { 'SFO' }
    end

    factory :new_york_airport, traits: [:new_york]
    factory :san_francisco_airport, traits: [:san_francisco]

  end
end

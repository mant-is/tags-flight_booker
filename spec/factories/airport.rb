FactoryBot.define do
  factory :airport do
    code { 'PRS' }

    trait :new_york do
      code { 'JFK' }
    end

    trait :san_francisco do
      code { 'SFO' }
    end

  end
end

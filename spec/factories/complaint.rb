FactoryBot.define do
  factory :complaint do
    title { Faker::Lorem.characters(number:10) }
    body { Faker::Lorem.characters(number:30) }
    association :user
  end
end
FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number: 10) }
    email { 'aaa@aaa' }
    password { '111111' }
  end
end

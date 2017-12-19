FactoryBot.define do
  factory :product_group do
    name { Faker::Lorem.word }
    description { Faker::Hipster.sentence }
  end
end

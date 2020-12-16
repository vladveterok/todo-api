FactoryBot.define do
  factory :project do
    name { FFaker::Book.title }
    created_by { Faker::Number.number(10) }
  end
end

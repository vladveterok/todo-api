FactoryBot.define do
  factory :project do
    name { FFaker::Book.title }
    created_by { FFaker::Random.rand(10**10) }
  end
end

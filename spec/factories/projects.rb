FactoryBot.define do
  factory :project do
    name { FFaker::Book.title }

    trait :with_user do
      user { create(:user) }
    end
  end
end

FactoryBot.define do
  factory :task do
    title { FFaker::Book.title }
    deadline { FFaker::Time.datetime }
    project_id { nil }

    trait :is_done do
      done { true }
    end

    trait :is_not_done do
      done { false }
    end
  end
end

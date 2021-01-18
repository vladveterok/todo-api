FactoryBot.define do
  factory :task do
    name { FFaker::Book.title }
    deadline { FFaker::Time.datetime }
    project_id { nil }
    done { false }

    trait :is_done do
      done { true }
    end
  end
end

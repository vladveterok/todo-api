FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { "#{FFaker::Internet.password(9, 16).delete('_')}1Ab" }
  end
end

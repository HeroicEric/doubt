# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "Eric#{n}" }
    sequence(:last_name) { |n| "Kelly#{n}" }
    email { [first_name, last_name].join + "@example.com" }
    sequence(:username) { |n| "heroic#{n}guy" }
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :identity do
    association :user

    uid "1234567890"
    provider "github"
  end
end

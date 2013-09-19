FactoryGirl.define do
  factory :checkpoint do
    association :section
    sequence(:title) { |n|  "Awesome #{n} Section" }
    body "Some really really awsome content for the checkpoint"
  end
end

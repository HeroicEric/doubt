FactoryGirl.define do
  factory :section do
    association :lesson
    sequence(:title) { |n|  "Awesome #{n} Section" }
  end
end

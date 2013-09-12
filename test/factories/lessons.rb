FactoryGirl.define do
  factory :lesson do
    sequence(:title) { |n|  "Awesome #{n} Lesson" }
  end
end

FactoryGirl.define do
  factory :checkpoint_completion do
    association :user
    association :checkpoint
    completed_at "2013-09-18 18:05:24"
  end
end

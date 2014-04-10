
FactoryGirl.define do
  factory :route, :class => Refinery::Routes::Route do
    sequence(:name) { |n| "refinery#{n}" }
  end
end


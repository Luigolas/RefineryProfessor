
FactoryGirl.define do
  factory :customization, :class => Refinery::Customizations::Customization do
    sequence(:name) { |n| "refinery#{n}" }
  end
end


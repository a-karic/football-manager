FactoryGirl.define do
  factory :city do
    country { association(:country) }
    name { Faker::Address.city }
    weather :sun

    trait :no_name do
      name nil
    end
  end
end

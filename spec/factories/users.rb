FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(8) }
    country { association(:country) }
    city { association(:city) }

    trait :no_password do
      password nil
    end

    trait :short_password do
      password '123'
    end

    trait :no_email do
      email nil
    end

    trait :no_city do
      city nil
    end

    trait :no_country do
      country nil
    end
  end
end

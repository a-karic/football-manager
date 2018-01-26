FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(8) }

    trait :no_password do
      password nil
    end

    trait :no_email do
      email nil
    end
  end
end

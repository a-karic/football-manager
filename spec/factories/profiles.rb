FactoryGirl.define do
  factory :profile do
    user { association(:user) }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    image_url { Faker::Avatar.image }
    birth_date { Faker::Date.birthday(12,80) }
    birth_city { Faker::Address.city }
    language { 5 }

    trait :no_first_name do
      first_name nil
    end

    trait :no_last_name do
      last_name nil
    end
  end
end

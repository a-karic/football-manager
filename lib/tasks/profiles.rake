namespace :profiles do
  desc "Create Profiles for users"
  task create_test_profiles: :environment do
    users = User.all
    users.each do |user|
      country = Country.all.sample
      user.create_profile(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        country: country
      )
    end
  end

end

namespace :profiles do
  desc "Create Profiles for users"
  task create_test_profiles: :environment do
    users = User.all
    users.each do |user|
      country = Country.all.sample
      language = Language.find_by(code: country.languages.sample) || Language.find_by(name: 'English')
      first_name = Faker::Name.first_name
      profile = user.create_profile(
        first_name: first_name,
        last_name: Faker::Name.last_name,
        country: country,
        birth_date: Faker::Date.birthday(12, 65),
        language: language,
        remote_photo_url: "https://avatars.io/twitter/#{first_name}",
        status: ['pending', 'accepted'].sample
      )
      puts "Created profile #{profile.first_name} #{profile.last_name}"
    end
  end

end

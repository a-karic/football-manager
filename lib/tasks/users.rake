namespace :users do
  desc "Create test users"
  task create_test_users: :environment do
    50.times do
      User.create!(
        email: Faker::Internet.email,
        password: '123456'
      )
    end
  end

end

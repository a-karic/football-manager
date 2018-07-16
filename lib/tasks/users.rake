namespace :users do
  desc "Create test users"
  task create_test_users: :environment do
    50.times do
      user = User.create!(
        email: Faker::Internet.email,
        password: '123456'
      )
      puts "Created user #{user.email}"
    end
  end

end

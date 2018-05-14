AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Rake::Task['countries:create_english_countries'].invoke
# Rake::Task['cities:create_all_cities'].invoke
Rake::Task['currencies:create_test_currencies'].invoke
Rake::Task['currencies:create_rate'].invoke
Rake::Task['currencies:add_to_countries'].invoke

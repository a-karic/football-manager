AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Rake::Task['countries:create_english_countries'].invoke
Rake::Task['countries:update_countries'].invoke
Rake::Task['cities:create_all_cities'].invoke
Rake::Task['currencies:create_test_currencies'].invoke
Rake::Task['currencies:create_rate'].invoke
Rake::Task['currencies:add_to_countries'].invoke
Rake::Task['languages:create_languages'].invoke
Rake::Task['users:create_test_users'].invoke
Rake::Task['profiles:create_test_profiles'].invoke
Rake::Task['football_leagues:create_leagues'].invoke
Rake::Task['football_clubs:create_clubs'].invoke

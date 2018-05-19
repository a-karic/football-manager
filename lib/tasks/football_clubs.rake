namespace :football_clubs do
  desc "Create football club for each profile"
  task create_clubs: :environment do
    leagues = Football::League.all
    file = File.read('clubs.json')
    clubs = JSON.parse file
    leagues.each_with_index do |league, index|
      16.times do
        club = clubs.sample
        league.clubs.create!(
          name: club['name'],
          key: club['key'],
          code: club['code']
        )
      end
    end
  end

end

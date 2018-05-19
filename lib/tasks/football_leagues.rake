namespace :football_leagues do
  desc "Create test football leagues"
  task create_leagues: :environment do
    countries = Country.all
    countries.each do |country|
      country.football_leagues.create(name: 'Premier League', rank: 'premier')
      country.football_leagues.create(
        name: 'Second League',
        rank: 'second_ranked'
      )
      4.times do |index|
      country.football_leagues.create(
        name: "3. League. #{index + 1}",
        rank: 'third_ranked'
      )
      end
    end
  end

end

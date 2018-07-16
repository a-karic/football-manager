namespace :football_leagues do
  desc "Create test football leagues"
  task create_leagues: :environment do
    countries = Country.all
    countries.each do |country|
      league = country.football_leagues.create(name: 'Premier League', rank: 'premier')
      puts "Created League #{league.name}"
      league = country.football_leagues.create(
        name: 'Second League',
        rank: 'second_ranked'
      )
      puts "Created League #{league.name}"
      4.times do |index|
        league = country.football_leagues.create(
          name: "3. League. #{index + 1}",
          rank: 'third_ranked'
        )
        puts "Created League #{league.name}"
      end
    end
  end

end

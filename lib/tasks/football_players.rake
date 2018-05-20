namespace :football_players do
  desc "Create Test Players"
  task create_test_players: :environment do
    country = Country.all.sample
    leagues = country.football_leagues
    leagues.each do |league|
      names = [
        'thibaut-courtois',
        'willy-caballero',
        'eduardo',
        'marcos-alonso2',
        'cesar-azpilicueta',
        'gary-cahill',
        'andreas-christensen',
        'david-luiz',
        'victor-moses2',
        'emerson-palmieri',
        'antonio-rudiger',
        'davide-zappacosta',
        'ethan-ampadu',
        'tiemoue-bakayoko',
        'ross-barkley',
        'danny-drinkwater',
        'cesc-fabregas',
        'eden-hazard',
        'n-golo-kante',
        'pedro',
        'kyle-scott',
        'willian',
        'alvaro-morata',
        'olivier-giroud',
      ]
      clubs = league.clubs
      clubs.each do |club|
        value = rand(1_000..1_000_000)
        skills = {
          stamina: rand(1..20),
          goalkeeping: rand(1..20),
          pace: rand(1..20),
          defending: rand(1..20),
          passing: rand(1..20),
          dribbling: rand(1..20),
          intelligence: rand(1..20),
          shooting: rand(1..20),
          form: rand(1..20),
          experience: rand(1..20)
        }
        name = names.sample
        club.players.create!(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          value: value,
          salary: value / 1000,
          height: Faker::Demographic.height.to_f * 100,
          weight: rand(70..110),
          skills: skills,
          remote_photo_url: "http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/#{name}.hero.png"
        )
      end
    end
  end

end

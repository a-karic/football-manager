namespace :cities do
  desc "TODO"
  task create_all_cities: :environment do
    cities_json = File.read('cities.json')
    all_cities = JSON.parse(cities_json)
    countries = Country.all
    countries.each do |country|
      cities = all_cities.select { |c| c['country'] == country.alpha2 }
      cities.each_with_index do |city, index|
        break if index > 20
        country.cities.create(
          name: city['name'],
          lat:city['lat'],
          lng:city['lng']
        )
        puts "Created city #{city['name']}"
      end
    end
  end
end

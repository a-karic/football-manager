namespace :countries do
  desc "Create countries"
  task create_english_countries: :environment do
    file = File.read('countries.json')
    countries = JSON.parse file
    countries.each do |country|
      Country.create!(
        name: country['name'],
        alpha2: country['alpha2'],
        alpha3: country['alpha3'],
        numeric: country['numeric']
      )
    end
  end
  desc "Update countries"
  task update_countries: :environment do
    file = File.read('countries-more.json')
    countries_parsed = JSON.parse file
    countries_parsed.each do |data|
      country = Country.find_by(alpha2: data[0])
      next unless country
      new_attrs = data[1].to_h
      country.update(new_attrs.except('continent', 'currency'))
    end
  end

end

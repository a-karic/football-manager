namespace :currencies do
  desc "TODO"
  task create_test_currencies: :environment do
    file = File.read('Common-Currency.json')
    currencies = JSON.parse file
    currencies.each do |element|
      currency_params = element.second
      Currency.create!(currency_params)
    end
  end
  task create_rate: :environment do
    file = File.read('euro-rate.json')
    objects = JSON.parse file
    objects.each do |object|
      currency = Currency.find_by(code: object['code'])
      next unless currency
      currency.update(rate: object['rate'])
    end
  end

end

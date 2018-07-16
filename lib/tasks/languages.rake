namespace :languages do
  desc "Create all languages"
  task create_languages: :environment do
    file = File.read('languages.json')
    languages = JSON.parse file
    languages.each do |lang|
      code = lang[0]
      name = lang[1]['name']
      native_name = lang[1]['nativeName']
      language = Language.create!(code: code, name: name, native_name: native_name)
      puts "Created language #{language.name}"
    end
  end

end

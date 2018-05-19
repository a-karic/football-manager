ActiveAdmin.register Profile do
  config.per_page = 9
  filter :first_name
  filter :last_name
  filter :birth_date
  filter :country
  filter :status
  filter :role

  controller do
    def scoped_collection
      return Profile.where(country: params[:country]) if params[:country]
      Profile.all
    end
  end

  index as: :grid, columns: 3 do |profile|
    div for: profile, style: 'border: 1px solid #ccc; padding: 10px;' do
      div for: header, style: 'display: flex; justify-content: space-between; align-items: center;' do
        h3 link_to "#{profile.first_name} #{profile.last_name}", admin_profile_path(profile)
        div image_tag profile.photo_url, width: 100, height: 100, style: 'margin-left: 16px;' if profile.photo_url
      end
      div for: body do
        div "Birth date: #{profile.birth_date}"
        div link_to "Language: #{profile.language.name}", admin_language_path(profile.language)
        div "Role: #{profile.role}"
        div link_to "Country: #{profile.country.name}", admin_country_path(profile.country)
        div "Status: #{profile.status}"
        # div "Club: #{profile.football_club}"
      end
    end
  end
end

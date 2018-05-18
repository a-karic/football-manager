ActiveAdmin.register Country do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  index as: :grid, columns: 5 do |country|
    div for: country do
      h3 link_to country.name, admin_country_path(country)
      div link_to "#{country.currency.name}", admin_currency_path(country.currency) if country.currency
      div link_to "#{country.profiles.count} users", admin_profiles_path(country: country)
      div "#{country.football_clubs.count} clubs"
      div "#{country.football_leagues.count} leagues"
    end

  end

end

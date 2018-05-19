ActiveAdmin.register Football::League do
  menu parent: 'Football', label: 'Leagues'
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

  controller do
    def scoped_collection
      return Football::League.where(country: params[:country]) if params[:country]
      Football::League.all
    end
  end
end

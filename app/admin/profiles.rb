ActiveAdmin.register Profile do
  controller do
    def scoped_collection
      return Profile.where(country: params[:country]) if params[:country]
      Profile.all
    end
  end
end

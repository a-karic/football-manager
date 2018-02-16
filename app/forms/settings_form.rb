class SettingsForm < FormObject
  attribute :city, :country

  def initialize
    make_attributes_of User.new, Profile.new
  end

  def make_attributes_of(*args)
  end
end

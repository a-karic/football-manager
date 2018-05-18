class Profile < ApplicationRecord
  belongs_to :user
  validates_presence_of :first_name, :last_name
  belongs_to :country
  belongs_to :city, optional: true
  belongs_to :language, optional: true

  enum role: %i[regular promotor translator moderator administrator]

  mount_uploader :photo, AvatarUploader
end

class Profile < ApplicationRecord
  belongs_to :user
  validates_presence_of :first_name, :last_name
  belongs_to :country
  belongs_to :city, optional: true
  belongs_to :language, optional: true
  has_one :football_club, class_name: 'Football::Club'

  enum role: %i[regular promotor translator moderator administrator]
  enum status: %i[pending rejected accepted banned]

  mount_uploader :photo, AvatarUploader
end

class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_length_of :password, minimum: 5
  has_one :profile, dependent: :destroy
  belongs_to :country, optional: true
  belongs_to :city, optional: true
end

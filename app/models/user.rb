class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_length_of :password_digest, minimum: 5

end

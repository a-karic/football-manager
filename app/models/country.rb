class Country < ApplicationRecord
  has_many :profiles
  has_many :cities
  belongs_to :currency, optional: true
end

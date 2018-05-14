class Country < ApplicationRecord
  has_many :profiles
  has_many :cities
  has_one :currency, foreign_key: :currency_id

end

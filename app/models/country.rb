class Country < ApplicationRecord
  has_many :profiles
  has_many :cities, dependent: :destroy
  has_many :football_leagues, class_name: 'Football::League', dependent: :destroy
  has_many :football_clubs, class_name: 'Football::Club'
  belongs_to :currency, optional: true

  serialize :languages, Array
end

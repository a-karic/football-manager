class City < ApplicationRecord
  belongs_to :country
  has_many :users

  enum weather: %i[sun rain snow]
  validates_presence_of :name
end

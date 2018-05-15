class Football::League < ApplicationRecord
  belongs_to :country

  enum rank: %i[premier second_ranked third_ranked]
end

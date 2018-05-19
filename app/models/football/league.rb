module Football
  class League < ApplicationRecord
    belongs_to :country
    has_many :clubs

    enum rank: %i[premier second_ranked third_ranked]
  end
end

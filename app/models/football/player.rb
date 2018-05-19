class Football::Player < ApplicationRecord
  store :skills, accessors: %i[stamina
                               goalkeeping
                               pace
                               defending
                               passing
                               dribbling
                               intelligence
                               shooting
                               form
                               experience], as: JSON
end

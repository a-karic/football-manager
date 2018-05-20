module Football
  class Player < ApplicationRecord
    store :skills, accessors: %i[
      stamina
      goalkeeping
      pace
      defending
      passing
      dribbling
      intelligence
      shooting
      form
      experience
    ], as: JSON
    belongs_to :club
    mount_uploader :photo, AvatarUploader
  end
end

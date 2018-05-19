module Football
  class Club < ApplicationRecord
    belongs_to :league

    mount_uploader :logo, AvatarUploader
  end
end

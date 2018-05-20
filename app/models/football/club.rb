module Football
  class Club < ApplicationRecord
    belongs_to :league
    has_many :players

    mount_uploader :logo, AvatarUploader
  end
end

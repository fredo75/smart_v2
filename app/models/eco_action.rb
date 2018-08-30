class EcoAction < ApplicationRecord
  belongs_to :user
   mount_uploader :photo, PhotoUploader



   CATEGORIES = ["transport", "food", "trash","house"]
end

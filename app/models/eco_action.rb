class EcoAction < ApplicationRecord
  belongs_to :user
   mount_uploader :photo, PhotoUploader





    UNITS = [["ltr Water",1],["ltr fioul",2], ["kg of plastic",3], ["Kg Wood",1],["kg food",3], ["kg of other material(metal,electronic...)",4]]
    CATEGORIES = ["transport", "food", "trash","house"]
end


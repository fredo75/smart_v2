class AddPhotoToSurvey < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :photo, :string
  end
end

class AddAddedToMySurveyToEcoAction < ActiveRecord::Migration[5.2]
  def change
    add_column :eco_actions, :added_to_survey, :boolean, default: false
  end
end

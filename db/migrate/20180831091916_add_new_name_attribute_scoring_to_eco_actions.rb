class AddNewNameAttributeScoringToEcoActions < ActiveRecord::Migration[5.2]
  def change
    remove_column :eco_actions, :eco_scoring
    add_column :eco_actions, :eco_impact, :integer
  end
end

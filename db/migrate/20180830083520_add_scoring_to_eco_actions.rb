class AddScoringToEcoActions < ActiveRecord::Migration[5.2]
  def change
    add_column :eco_actions, :eco_category, :string
    add_column :eco_actions, :eco_scoring, :integer
  end
end

class AddScoringUnitToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :eco_actions, :eco_scoring_unit, :string
    add_column :eco_actions, :eco_scoring_total, :integer
  end
end

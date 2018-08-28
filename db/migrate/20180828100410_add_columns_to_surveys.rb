class AddColumnsToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :housing_type, :integer
    add_column :surveys, :children_inhabitants, :integer
    add_column :surveys, :adults_inhabitants, :integer
    add_column :surveys, :energy_class, :string
    add_column :surveys, :vegetable_season, :string
    add_column :surveys, :eating_habits, :string
    add_column :surveys, :bio_buyings, :string
    add_column :surveys, :vehicule_km, :integer
    add_column :surveys, :fuel_type, :string
    add_column :surveys, :public_transp, :integer
    add_column :surveys, :upcycling, :integer
    add_column :surveys, :green_invest, :string
  end
end

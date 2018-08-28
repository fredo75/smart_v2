class RemoveHouseAppartmentFromSurveys < ActiveRecord::Migration[5.2]
  def change
    remove_column :surveys, :house_appartment, :boolean
  end
end

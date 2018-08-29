class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|

      t.integer :housing_type
      t.integer :adults_inhabitants
      t.integer :children_inhabitants
      t.integer :vehicule_km
      t.integer :public_transp
      t.float :upcycling
      t.float :heat_type
      t.integer :area
      t.boolean :isolated
      t.integer :house_inhabitants
      t.float :house_temp
      t.float :vegetable_season
      t.float :eating_habits
      t.float :bio_buyings
      t.float :green_invest
      t.float :fuel_type
      t.string :energy_class
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

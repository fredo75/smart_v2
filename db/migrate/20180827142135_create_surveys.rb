class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :heat_type
      t.boolean :house_appartment
      t.integer :area
      t.boolean :isolated
      t.integer :house_inhabitants
      t.integer :house_temp
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

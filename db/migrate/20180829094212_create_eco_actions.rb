class CreateEcoActions < ActiveRecord::Migration[5.2]
  def change
    create_table :eco_actions do |t|
      t.string :title
      t.string :photo
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

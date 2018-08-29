class CreateEcoActions < ActiveRecord::Migration[5.2]
  def change
    create_table :eco_actions do |t|

      t.timestamps
    end
  end
end

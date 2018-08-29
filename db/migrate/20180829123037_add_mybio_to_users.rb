class AddMybioToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mybio, :string
  end
end

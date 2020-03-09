class AddBirthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth, :integer,null: false
  end
end

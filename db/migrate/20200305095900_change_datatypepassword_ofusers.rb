class ChangeDatatypepasswordOfusers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :password, :integer ,
  end
end

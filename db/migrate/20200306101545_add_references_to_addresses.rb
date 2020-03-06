class AddReferencesToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :user, null: false, foreign_key: true
  end
end

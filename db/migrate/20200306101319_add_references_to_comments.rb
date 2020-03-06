class AddReferencesToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :user, null: false, foreign_key: true
  end
end

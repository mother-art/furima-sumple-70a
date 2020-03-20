class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :product
      t.references :user
      t.timestamps
    end
  end
end

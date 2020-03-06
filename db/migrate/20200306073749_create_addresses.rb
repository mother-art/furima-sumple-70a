class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer "user_id", null: false
      t.string "zip_code", null: false
      t.string "prefecture", null: false
      t.string "city", null: false
      t.string "street_num", null: false
      t.string "building"
      t.timestamps
    end
  end
end

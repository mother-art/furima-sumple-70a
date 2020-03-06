class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer "user_id", null: false
      t.string "item_name", null: false
      t.string "detail", null: false
      t.string "category"
      t.integer "price", null: false
      t.string "item_status", null: false
      t.integer "postage_cost", null: false
      t.string "ship_area", null: false
      t.string "ship_method", null: false
      t.string "ship_date", null: false
      t.timestamps
    end
  end
end

class RenameCategoryColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :category, :main_tag_id
  end
end

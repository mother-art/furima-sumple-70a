class AddNameToMainTag < ActiveRecord::Migration[5.2]
  def change
    add_column :main_tags, :name, :string
  end
end

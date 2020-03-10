class AddAncestryToMainTag < ActiveRecord::Migration[5.2]
  def change
    add_column :main_tags, :ancestry, :string
  end
end

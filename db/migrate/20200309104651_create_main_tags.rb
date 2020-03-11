class CreateMainTags < ActiveRecord::Migration[5.2]
  def change
    create_table :main_tags do |t|

      t.timestamps
    end
  end
end

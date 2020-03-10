class ChangeDatatypePostageCostOfProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :postage_cost, :string
  end
end

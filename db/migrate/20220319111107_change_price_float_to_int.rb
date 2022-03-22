class ChangePriceFloatToInt < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :price, :integer
    change_column :listings, :price, :integer
  end
end

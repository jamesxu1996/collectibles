class RemovePriceFromOrdersTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :price, :integer
  end
end

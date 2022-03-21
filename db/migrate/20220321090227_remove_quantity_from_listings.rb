class RemoveQuantityFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :quantity, :integer
  end
end

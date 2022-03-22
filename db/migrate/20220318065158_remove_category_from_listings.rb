class RemoveCategoryFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :category
  end
end

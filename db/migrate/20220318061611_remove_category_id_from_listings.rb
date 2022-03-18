class RemoveCategoryIdFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_index :listings, :category_id
    remove_column :listings, :category_id, :string
  end
end

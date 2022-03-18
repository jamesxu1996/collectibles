class RemoveListingReferenceFromCategories < ActiveRecord::Migration[6.1]
  def change
    remove_index :categories, :listing_id
  end
end

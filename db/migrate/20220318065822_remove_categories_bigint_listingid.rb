class RemoveCategoriesBigintListingid < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :listing_id, :string
  end
end

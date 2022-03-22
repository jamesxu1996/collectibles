class AddConditionCategoryIdToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :condition, :string
  end
end

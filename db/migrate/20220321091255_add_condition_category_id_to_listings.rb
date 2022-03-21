class AddConditionCategoryIdToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :condition, :string
    add_reference :listings, :category, foreign_key: true
  end
end

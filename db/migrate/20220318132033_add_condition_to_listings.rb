class AddConditionToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :condition, :integer
    add_reference :listings, :user, foreign_key: true
    add_reference :listings, :favourite, foreign_key: true
    add_reference :listings, :order, foreign_key: true
  end
end

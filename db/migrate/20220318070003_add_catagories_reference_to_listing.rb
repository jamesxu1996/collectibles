class AddCatagoriesReferenceToListing < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :category, foreign_key: true
  end
end

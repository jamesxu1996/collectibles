class AddUserIdToListings < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :user, foreign_key: true
  end
end

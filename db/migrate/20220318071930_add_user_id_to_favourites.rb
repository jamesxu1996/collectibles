class AddUserIdToFavourites < ActiveRecord::Migration[6.1]
  def change
    add_reference :favourites, :user, foreign_key: true
    add_reference :favourites, :listing, foreign_key: true
  end
end

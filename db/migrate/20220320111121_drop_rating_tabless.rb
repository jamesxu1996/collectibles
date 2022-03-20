class DropRatingTabless < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :favourite_id
    drop_table :average_caches
    drop_table :favourites
    drop_table :overall_averages
    drop_table :rating_caches
  end
end

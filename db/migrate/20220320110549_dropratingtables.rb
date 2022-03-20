class Dropratingtables < ActiveRecord::Migration[6.1]
  def change
    remove_index :listings, :favourite_id
  end
end

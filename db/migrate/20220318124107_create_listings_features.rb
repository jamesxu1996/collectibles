class CreateListingsFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :listings_features do |t|

      t.timestamps
    end
  end
end

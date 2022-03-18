class AddRefererencesListingsFeatures < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings_features, :listing, foreign_key: true
    add_reference :listings_features, :feature, foreign_key: true
  end
end

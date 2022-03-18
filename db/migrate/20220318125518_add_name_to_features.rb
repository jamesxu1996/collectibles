class AddNameToFeatures < ActiveRecord::Migration[6.1]
  def change
    add_column :features, :name, :string
  end
end

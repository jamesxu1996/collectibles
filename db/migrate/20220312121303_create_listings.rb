class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.float :price
      t.text :description
      t.integer :quantity
      t.string :category

      t.timestamps
    end
  end
end

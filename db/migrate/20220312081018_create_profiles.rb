class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.date :dob
      t.integer :phone
      t.text :description

      t.timestamps
    end
  end
end

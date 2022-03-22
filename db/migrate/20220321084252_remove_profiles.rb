class RemoveProfiles < ActiveRecord::Migration[6.1]
  def change
    remove_index :users, :profile_id
    remove_column :users, :profile_id, :string
    drop_table :profiles
  end
end

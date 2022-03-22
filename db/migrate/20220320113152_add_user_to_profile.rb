class AddUserToProfile < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :profile, foreign_key: true
  end
end

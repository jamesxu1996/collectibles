class ChangePhoneToBeStringInProfile < ActiveRecord::Migration[6.1]
  def change
    change_column :profiles, :phone, :string
  end
end

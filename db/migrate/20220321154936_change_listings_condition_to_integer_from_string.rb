class ChangeListingsConditionToIntegerFromString < ActiveRecord::Migration[6.1]
  def change
    change_column :listings, :condition, 'integer USING CAST(condition AS integer)'
  end
end

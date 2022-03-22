class ChangeCategoryToReference < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :listing, foreign_key: true
  end
end

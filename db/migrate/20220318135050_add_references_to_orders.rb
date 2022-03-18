class AddReferencesToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :payment_id, :string
    add_column :orders, :receipt_url, :string
    add_reference :orders, :listing, foreign_key: true
    add_reference :orders, :buyer, null: false
    add_reference :orders, :seller, null: false
    add_foreign_key :orders, :users, column: :buyer_id
    add_foreign_key :orders, :users, column: :seller_id
  end


end

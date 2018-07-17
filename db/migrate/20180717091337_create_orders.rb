class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :total
      t.string :float
    end
    add_index :orders, :user_id
    add_index :orders, :product_id
  end
end

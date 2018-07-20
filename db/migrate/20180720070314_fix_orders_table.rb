class FixOrdersTable < ActiveRecord::Migration[5.2]
  def change
    remove_column: :orders, :float
  end
  def change
    change_column: :orders, :total, :float
  end
end

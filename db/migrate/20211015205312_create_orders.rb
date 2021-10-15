class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.float :order_total
      t.boolean :buy
      t.boolean :sell

      t.timestamps
    end
  end
end

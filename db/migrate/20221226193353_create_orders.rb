class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :Order_name
      t.integer :orderId
      t.string :status
      t.float :grand_total
      t.float :orderd_items

      t.timestamps
    end
  end
end

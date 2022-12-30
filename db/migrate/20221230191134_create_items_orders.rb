class CreateItemsOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :items_orders do |t|
      t.references :item_id, null: false, foreign_key: true
      t.references :order_id, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end

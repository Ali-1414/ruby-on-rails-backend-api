class CreateCashiers < ActiveRecord::Migration[7.0]
  def change
    create_table :cashiers do |t|
      t.string :Username
      t.string :password
      t.integer :user_id
      t.integer :phone_number
      t.string :ordersList
      t.string :order_details
      t.string :order_status

      t.timestamps
    end
  end
end

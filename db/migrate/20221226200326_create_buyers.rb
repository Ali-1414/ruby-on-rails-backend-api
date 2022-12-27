class CreateBuyers < ActiveRecord::Migration[7.0]
  def change
    create_table :buyers do |t|
      t.string :Username
      t.string :password
      t.string :string
      t.string :user_id
      t.string :integer
      t.integer :phone_number
      t.float :Buyer_Id
      t.string :shops
      t.string :items
      t.string :ordersList
      t.string :order_details
      t.integer :Item_quantities

      t.timestamps
    end
  end
end

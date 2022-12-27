class CreateShopOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_owners do |t|
      t.string :Username
      t.string :password
      t.integer :user_id
      t.integer :phone_number
      t.integer :cashier
      t.string :items
      t.string :shop_owner

      t.timestamps
    end
  end
end

class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :Username
      t.string :password
      t.integer :user_id
      t.integer :phone_number
      t.string :shops_list
      t.string :shop_owners

      t.timestamps
    end
  end
end

class AddShopIdToShopowners < ActiveRecord::Migration[7.0]
  def change
    AddReference(:Shopowners, :shops ,foreign_key : true)
  end
end

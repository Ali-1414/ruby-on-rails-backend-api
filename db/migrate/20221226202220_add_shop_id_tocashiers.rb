class AddShopIdTocashiers < ActiveRecord::Migration[7.0]
  def change
    AddReference(:cashiers, :shops ,foreign_key : true)
  end
end

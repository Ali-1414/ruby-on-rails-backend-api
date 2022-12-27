class AddShopIdToItems < ActiveRecord::Migration[7.0]
    def change
    AddReference(:items, :shops ,foreign_key : true)
  end
end

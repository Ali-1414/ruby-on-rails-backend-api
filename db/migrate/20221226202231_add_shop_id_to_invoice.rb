class AddShopIdToInvoice < ActiveRecord::Migration[7.0]
  def change
    AddReference(:Invoices, :shops ,foreign_key : true)
  end
end

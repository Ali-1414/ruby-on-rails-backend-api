class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.date :date
      t.float :grand_total
      t.string :status
      t.string :orders

      t.timestamps
    end
  end
end

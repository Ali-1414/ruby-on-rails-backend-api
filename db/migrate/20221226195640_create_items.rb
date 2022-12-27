class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :ItemId
      t.string :Item_name
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end

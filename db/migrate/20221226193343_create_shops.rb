class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :shopId
      t.string :category
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

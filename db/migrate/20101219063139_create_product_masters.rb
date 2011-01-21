class CreateProductMasters < ActiveRecord::Migration
  def self.up
    create_table :product_masters do |t|
      t.integer :Quntity
      t.float :price
      t.float :tax
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :product_masters
  end
end

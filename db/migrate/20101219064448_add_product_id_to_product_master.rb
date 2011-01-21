class AddProductIdToProductMaster < ActiveRecord::Migration
  def self.up
    add_column :product_masters, :product_id, :integer
  end

  def self.down
    remove_column :product_masters, :product_id
  end
end

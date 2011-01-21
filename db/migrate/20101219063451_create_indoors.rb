class CreateIndoors < ActiveRecord::Migration
  def self.up
    create_table :indoors do |t|
      t.date :date
      t.string :sales_incharge

      t.timestamps
    end
  end

  def self.down
    drop_table :indoors
  end
end

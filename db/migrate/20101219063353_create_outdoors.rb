class CreateOutdoors < ActiveRecord::Migration
  def self.up
    create_table :outdoors do |t|
      t.string :vehicle_no
      t.string :driver_name
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :outdoors
  end
end

# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101219064448) do

  create_table "indoors", :force => true do |t|
    t.date     "date"
    t.string   "sales_incharge"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outdoors", :force => true do |t|
    t.string   "vehicle_no"
    t.string   "driver_name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_masters", :force => true do |t|
    t.integer  "Quntity"
    t.float    "price"
    t.float    "tax"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
  end

  create_table "products", :force => true do |t|
    t.string   "product_name"
    t.text     "pro_des"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

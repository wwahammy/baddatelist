# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130102044407) do

  create_table "reports", :force => true do |t|
    t.string   "hash"
    t.integer  "violent"
    t.integer  "no_payment"
    t.integer  "persistent_haggler"
    t.integer  "no_show"
    t.integer  "refuses_condom"
    t.integer  "disrespectful"
    t.integer  "police"
    t.integer  "stalker"
    t.integer  "keepscalling_wontpay"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "reports", ["hash"], :name => "index_reports_on_hash"

  create_table "salts", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

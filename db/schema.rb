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

ActiveRecord::Schema.define(:version => 20130517092502) do

  create_table "complaints", :force => true do |t|
    t.boolean  "fly_destination"
    t.string   "from_to_fly"
    t.boolean  "excess_charged"
    t.boolean  "indecent_behaviour"
    t.boolean  "charged_and_allowed_other_complainant"
    t.integer  "charged_for_luggage"
    t.string   "from_to_luggage"
    t.string   "bus_stop_name"
    t.string   "other_complaints"
    t.datetime "occurence_date_time"
    t.string   "place_occurence"
    t.boolean  "fault_no_working_meter"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile",     :limit => 10
    t.string   "address"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end

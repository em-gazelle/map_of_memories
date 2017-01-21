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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170121214141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "maps", force: :cascade do |t|
    t.integer "upper_right_longitude"
    t.integer "upper_right_latitude"
    t.integer "lower_left_latitude"
    t.integer "lower_left_longitude"
    t.integer "center_lat"
    t.integer "center_long"
    t.integer "zoom"
  end

  create_table "markers", force: :cascade do |t|
    t.string  "title"
    t.text    "description"
    t.string  "icon"
    t.integer "longitude"
    t.integer "latitude"
    t.integer "map_id"
    t.index ["map_id"], name: "index_markers_on_map_id", using: :btree
  end

  add_foreign_key "markers", "maps"
end

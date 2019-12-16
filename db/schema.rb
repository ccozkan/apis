# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_16_163749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "antennas", force: :cascade do |t|
    t.string "city"
    t.string "location"
    t.string "band"
    t.string "frequency"
    t.string "tone"
    t.string "sql"
    t.integer "status"
    t.string "date_updated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "beverages", force: :cascade do |t|
    t.string "name"
    t.string "glass"
    t.string "category"
    t.string "garnish"
    t.text "preparation"
    t.text "ingredients"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "radio_stations", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "genre"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

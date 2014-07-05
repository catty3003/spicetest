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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140705175455) do

  create_table "matrices", force: true do |t|
    t.integer  "m_common_name_id"
    t.integer  "m_genus_id"
    t.integer  "m_species_id"
    t.string   "other_matrix_name"
    t.string   "plant_part_id"
    t.integer  "storage_form_id"
    t.integer  "product_form_id"
    t.string   "place_of_origin"
    t.date     "date_of_harvest"
    t.float    "relative_humidity_during_harvest"
    t.float    "temperature_during_harvest"
    t.string   "pre_treatment"
    t.date     "sampling_date"
    t.float    "m_ph"
    t.float    "m_aw"
    t.float    "humidity_of_matrix"
    t.float    "ash"
    t.float    "sand"
    t.float    "lipids"
    t.string   "further_ingredients"
    t.text     "m_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrixgenus", force: true do |t|
    t.string   "m_genus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrixnames", force: true do |t|
    t.string   "m_common_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrixplantparts", force: true do |t|
    t.string   "plant_part"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrixproductforms", force: true do |t|
    t.string   "product_form"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrixspecies", force: true do |t|
    t.string   "m_species"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrixstorageforms", force: true do |t|
    t.string   "storage_form"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

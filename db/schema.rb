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

ActiveRecord::Schema.define(version: 2018_07_21_204004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "categories_organizations", force: :cascade do |t|
    t.bigint "organization_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_categories_organizations_on_category_id"
    t.index ["organization_id"], name: "index_categories_organizations_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "ein"
    t.string "charityName"
    t.string "accepted_categories"
    t.string "amazonWishlist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "longitude"
    t.string "latitude"
  end

  create_table "orgs", force: :cascade do |t|
    t.string "ein"
    t.string "charityName"
    t.string "url"
    t.string "donationUrl"
    t.string "city"
    t.string "state"
    t.string "zipCode"
    t.string "website"
    t.string "missionStatement"
    t.string "longitude"
    t.string "latitude"
    t.string "amazonWishlist"
    t.string "accepted_categories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street"
    t.string "country"
  end

end

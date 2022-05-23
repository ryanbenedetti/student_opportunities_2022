# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_23_070024) do

  create_table "level_requirements", force: :cascade do |t|
    t.integer "opportunity_id"
    t.integer "level_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.string "award_name"
    t.string "subject_area"
    t.string "level"
    t.date "deadline"
    t.text "other_req"
    t.string "sponsor"
    t.string "amount"
    t.string "state"
    t.string "min_gpa"
    t.string "contact"
    t.string "keywords"
    t.string "website"
    t.string "opportunity_type"
    t.string "citizenship"
    t.string "website_link_text"
    t.boolean "is_published"
    t.text "admin_notes"
    t.boolean "respect_deadline"
    t.date "date_reopens"
    t.string "updated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

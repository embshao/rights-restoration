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

ActiveRecord::Schema.define(version: 2021_05_24_003146) do

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "state"
    t.string "middle_initial"
    t.string "street_address"
    t.string "zip_code"
    t.string "city"
    t.string "state_of_residence"
    t.date "date_of_birth"
    t.string "phone_number"
  end

  create_table "petitions", force: :cascade do |t|
    t.integer "number_of_felonies"
    t.integer "sentenced_to_probation", default: 0, null: false
    t.integer "sentenced_to_department_of_corrections", default: 0, null: false
    t.integer "completed_probation", default: 0, null: false
    t.integer "completed_doc_sentence", default: 0, null: false
    t.text "uncompleted_sentence_explanation"
    t.integer "paid_victim_restitution", default: 0, null: false
    t.text "unpaid_victim_restitution_explanation"
    t.integer "paid_court", default: 0, null: false
    t.text "unpaid_court_explanation"
    t.integer "prev_set_aside_app", default: 0, null: false
    t.date "prev_set_aside_app_date"
    t.integer "prev_granted_set_aside", default: 0, null: false
    t.integer "prev_denied_set_aside", default: 0, null: false
    t.integer "open_criminal_cases", default: 0, null: false
    t.text "open_criminal_case_explanation"
    t.integer "active_warrant", default: 0, null: false
    t.text "active_warrant_explanation"
    t.text "additional_info_for_consideration"
    t.integer "hearing_requested", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.boolean "can_file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

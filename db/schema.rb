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

ActiveRecord::Schema.define(version: 2021_05_26_014804) do

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

  create_table "post_discharge_apps", force: :cascade do |t|
    t.date "date_of_judgement"
    t.integer "client_id", null: false
    t.boolean "judgement_of_guilt"
    t.boolean "completed_probation"
    t.boolean "discharged_two_plus_years"
    t.boolean "complied_probation"
    t.text "not_complied_probation_explanation"
    t.boolean "federal_conviction", default: false
    t.integer "paid_victim_restitution", default: 0, null: false
    t.text "unpaid_victim_restitution_explanation"
    t.integer "paid_court", default: 0, null: false
    t.text "unpaid_court_explanation"
    t.integer "prior_restoration_application", default: 0, null: false
    t.date "prior_restoration_application_date"
    t.integer "prior_granted_restoration", default: 0, null: false
    t.integer "prior_denied_restoration", default: 0, null: false
    t.integer "open_criminal_cases", default: 0, null: false
    t.integer "active_warrant", default: 0, null: false
    t.text "active_warrant_explanation"
    t.text "extra_consideration"
    t.integer "hearing_requested", default: 0, null: false
    t.string "attorney_or_probation_officer_name"
    t.string "aopo_street_address"
    t.string "aopo_zip_code"
    t.string "aopo_city"
    t.string "aopo_state_of_residence"
    t.index ["client_id"], name: "index_post_discharge_apps_on_client_id"
  end

  create_table "set_aside_apps", force: :cascade do |t|
    t.boolean "sentenced_to_probation"
    t.boolean "sentenced_to_department_of_corrections"
    t.boolean "completed_probation"
    t.boolean "complied_sentence"
    t.boolean "discharged"
    t.text "not_complied_sentence_explanation"
    t.integer "paid_victim_restitution", default: 0, null: false
    t.text "unpaid_victim_restitution_explanation"
    t.integer "paid_court", default: 0, null: false
    t.text "unpaid_court_explanation"
    t.integer "prior_set_aside_app", default: 0, null: false
    t.date "prior_set_aside_app_date"
    t.integer "prior_granted_set_aside", default: 0, null: false
    t.integer "prior_denied_set_aside", default: 0, null: false
    t.integer "open_criminal_cases", default: 0, null: false
    t.text "open_criminal_case_explanation"
    t.integer "active_warrant", default: 0, null: false
    t.text "active_warrant_explanation"
    t.text "extra_consideration"
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

  add_foreign_key "post_discharge_apps", "clients"
end

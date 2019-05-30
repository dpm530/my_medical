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

ActiveRecord::Schema.define(version: 2019_05_29_231642) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "allergies", force: :cascade do |t|
    t.string "allergen"
    t.string "reaction"
    t.string "severity"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_allergies_on_patient_id"
  end

  create_table "diagnoses", force: :cascade do |t|
    t.date "onset"
    t.string "diagnosis"
    t.string "treatment"
    t.text "note"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_diagnoses_on_patient_id"
  end

  create_table "emergency_contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "relationship"
    t.string "phone1"
    t.string "phone2"
    t.string "email"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_emergency_contacts_on_patient_id"
  end

  create_table "family_histories", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "relationship"
    t.date "dob"
    t.date "dod"
    t.string "medical_history"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_family_histories_on_patient_id"
  end

  create_table "general_informations", force: :cascade do |t|
    t.string "blood_type"
    t.string "height"
    t.string "weight"
    t.string "allergies"
    t.string "organ_donor"
    t.string "exercise"
    t.string "alcohol"
    t.string "tobacco"
    t.string "drugs"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_general_informations_on_patient_id"
  end

  create_table "health_insurances", force: :cascade do |t|
    t.string "company"
    t.string "phone"
    t.string "id_number"
    t.string "group_number"
    t.string "coverage"
    t.string "copays"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_health_insurances_on_patient_id"
  end

  create_table "immunizations", force: :cascade do |t|
    t.string "vaccine"
    t.date "received_on"
    t.date "expired_on"
    t.string "administered_by"
    t.string "dosage"
    t.string "manufacturer"
    t.text "note"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_immunizations_on_patient_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string "drug_name"
    t.string "dosage"
    t.string "frequency"
    t.date "began_on"
    t.string "reason_taking"
    t.string "side_effects"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_medications_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.date "dob"
    t.string "employer"
    t.string "occupation"
    t.string "sex"
  end

  create_table "to_do_lists", force: :cascade do |t|
    t.string "item"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_to_do_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

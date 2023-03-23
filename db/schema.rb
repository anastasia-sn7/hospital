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

ActiveRecord::Schema[7.0].define(version: 2023_03_15_212340) do
  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"clinic_id\"", name: "index_clinics_on_clinic_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.integer "experience_in_years"
    t.integer "repartment_id", null: false
    t.integer "specialization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"doctor_id\"", name: "index_doctors_on_doctor_id"
    t.index ["repartment_id"], name: "index_doctors_on_repartment_id"
    t.index ["specialization_id"], name: "index_doctors_on_specialization_id"
  end

  create_table "medcards", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.integer "pacient_id", null: false
    t.integer "clinic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"medcard_id\"", name: "index_medcards_on_medcard_id"
    t.index ["clinic_id"], name: "index_medcards_on_clinic_id"
    t.index ["pacient_id"], name: "index_medcards_on_pacient_id"
  end

  create_table "pacients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "diagnosis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"pacient_id\"", name: "index_pacients_on_pacient_id"
  end

  create_table "repartments", force: :cascade do |t|
    t.string "name"
    t.string "block"
    t.integer "clinic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"repartment_id\"", name: "index_repartments_on_repartment_id"
    t.index ["clinic_id"], name: "index_repartments_on_clinic_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"specialization_id\"", name: "index_specializations_on_specialization_id"
  end

  add_foreign_key "doctors", "repartments"
  add_foreign_key "doctors", "specializations"
  add_foreign_key "medcards", "clinics"
  add_foreign_key "medcards", "pacients"
  add_foreign_key "repartments", "clinics"
end

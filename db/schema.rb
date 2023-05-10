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

ActiveRecord::Schema[7.0].define(version: 2023_05_10_175847) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
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

  create_table "clinics", force: :cascade do |t|
    t.integer "clinic_id"
    t.string "name"
    t.string "address"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year"
    t.string "clinic_type"
    t.string "city"
    t.float "RatingMortality"
    t.index ["clinic_id"], name: "index_clinics_on_clinic_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.integer "doctor_id"
    t.string "name"
    t.integer "experience_in_years"
    t.integer "repartment_id", null: false
    t.integer "specialization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctors_on_doctor_id"
    t.index ["repartment_id"], name: "index_doctors_on_repartment_id"
    t.index ["specialization_id"], name: "index_doctors_on_specialization_id"
  end

  create_table "med_certificates", force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.integer "pacient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_med_certificates_on_doctor_id"
    t.index ["pacient_id"], name: "index_med_certificates_on_pacient_id"
  end

  create_table "medcards", force: :cascade do |t|
    t.integer "medcard_id"
    t.string "name"
    t.integer "year"
    t.integer "pacient_id", null: false
    t.integer "clinic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_medcards_on_clinic_id"
    t.index ["medcard_id"], name: "index_medcards_on_medcard_id"
    t.index ["pacient_id"], name: "index_medcards_on_pacient_id"
  end

  create_table "pacients", force: :cascade do |t|
    t.integer "pacient_id"
    t.string "name"
    t.integer "age"
    t.string "diagnosis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pacient_id"], name: "index_pacients_on_pacient_id"
  end

  create_table "repartments", force: :cascade do |t|
    t.integer "repartment_id"
    t.string "name"
    t.string "block"
    t.integer "clinic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_repartments_on_clinic_id"
    t.index ["repartment_id"], name: "index_repartments_on_repartment_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.integer "specialization_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specialization_id"], name: "index_specializations_on_specialization_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "doctors", "repartments"
  add_foreign_key "doctors", "specializations"
  add_foreign_key "med_certificates", "doctors"
  add_foreign_key "med_certificates", "pacients"
  add_foreign_key "medcards", "clinics"
  add_foreign_key "medcards", "pacients"
  add_foreign_key "repartments", "clinics"
end

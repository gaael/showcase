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

ActiveRecord::Schema.define(version: 2022_01_08_174534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competences", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "competences_experiences", id: false, force: :cascade do |t|
    t.bigint "competence_id", null: false
    t.bigint "experience_id", null: false
  end

  create_table "competences_projects", id: false, force: :cascade do |t|
    t.bigint "competence_id", null: false
    t.bigint "project_id", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "name"
    t.string "start_date"
    t.string "end_date"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "experiences_projects", id: false, force: :cascade do |t|
    t.bigint "experience_id", null: false
    t.bigint "project_id", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "codebase"
    t.integer "ruby_version"
    t.integer "rails_version"
    t.integer "front_end_framework"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

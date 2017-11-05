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

ActiveRecord::Schema.define(version: 20171105222436) do

  create_table "ingredient_stages", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "stage_id"
    t.index ["ingredient_id"], name: "index_ingredient_stages_on_ingredient_id"
    t.index ["stage_id"], name: "index_ingredient_stages_on_stage_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title", null: false
    t.string "slug", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "published", default: false, null: false
  end

  create_table "stages", force: :cascade do |t|
    t.string "title", null: false
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_stages_on_recipe_id"
  end

  create_table "steps", force: :cascade do |t|
    t.text "content", null: false
    t.integer "stage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stage_id"], name: "index_steps_on_stage_id"
  end

end

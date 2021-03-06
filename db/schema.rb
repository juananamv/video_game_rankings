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

ActiveRecord::Schema.define(version: 2020_10_09_235716) do

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "video_game_iterations", force: :cascade do |t|
    t.integer "year"
    t.decimal "sales"
    t.integer "rating"
    t.integer "video_game_title_id", null: false
    t.integer "platform_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["platform_id"], name: "index_video_game_iterations_on_platform_id"
    t.index ["video_game_title_id"], name: "index_video_game_iterations_on_video_game_title_id"
  end

  create_table "video_game_titles", force: :cascade do |t|
    t.string "name"
    t.integer "publisher_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_video_game_titles_on_genre_id"
    t.index ["publisher_id"], name: "index_video_game_titles_on_publisher_id"
  end

  add_foreign_key "video_game_iterations", "platforms"
  add_foreign_key "video_game_iterations", "video_game_titles"
  add_foreign_key "video_game_titles", "genres"
  add_foreign_key "video_game_titles", "publishers"
end

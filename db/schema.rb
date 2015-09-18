# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150918172327) do

  create_table "artist_genres", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "genre_id"
  end

  add_index "artist_genres", ["artist_id"], name: "index_artist_genres_on_artist_id"
  add_index "artist_genres", ["genre_id"], name: "index_artist_genres_on_genre_id"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "followers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_artists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "artist_id"
  end

  add_index "user_artists", ["artist_id"], name: "index_user_artists_on_artist_id"
  add_index "user_artists", ["user_id"], name: "index_user_artists_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

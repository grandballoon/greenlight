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

ActiveRecord::Schema.define(version: 2018_07_30_204435) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.boolean "a_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_episodes", force: :cascade do |t|
    t.integer "character_id"
    t.integer "episode_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "archetype"
    t.string "catchphrase"
    t.integer "actor_id"
    t.integer "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coappearances", force: :cascade do |t|
    t.integer "star_id"
    t.integer "costar_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.integer "season"
    t.string "title"
    t.integer "show_id"
    t.integer "producer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "producer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

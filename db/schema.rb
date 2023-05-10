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

ActiveRecord::Schema[7.0].define(version: 2023_05_10_052304) do
  create_table "equipes", force: :cascade do |t|
    t.string "name"
    t.string "town"
    t.integer "joueur_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["joueur_id"], name: "index_equipes_on_joueur_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joueurs", force: :cascade do |t|
    t.string "name"
    t.integer "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_joueurs_on_job_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.integer "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_players_on_job_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "town"
    t.integer "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_teams_on_player_id"
  end

  add_foreign_key "equipes", "joueurs"
  add_foreign_key "joueurs", "jobs"
  add_foreign_key "players", "jobs"
  add_foreign_key "teams", "players"
end

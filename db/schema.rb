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

ActiveRecord::Schema.define(version: 2019_05_07_234747) do

  create_table "away_players", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "value"
    t.integer "away_team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_away_players_on_away_team_id"
  end

  create_table "away_teams", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "num_of_wins"
    t.integer "num_of_losses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "home_player_id"
    t.integer "home_team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["home_player_id"], name: "index_contracts_on_home_player_id"
    t.index ["home_team_id"], name: "index_contracts_on_home_team_id"
  end

  create_table "home_players", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_teams", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "num_of_wins"
    t.integer "num_of_losses"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_home_teams_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "away_team_id"
    t.integer "home_team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_matches_on_away_team_id"
    t.index ["home_team_id"], name: "index_matches_on_home_team_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

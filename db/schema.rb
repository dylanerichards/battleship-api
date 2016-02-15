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

ActiveRecord::Schema.define(version: 20160215223149) do

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "player1"
    t.string   "player2"
    t.string   "a1"
    t.string   "a2"
    t.string   "a3"
    t.string   "a4"
    t.string   "a5"
    t.string   "a6"
    t.string   "a7"
    t.string   "a8"
    t.string   "a9"
    t.string   "a10"
    t.string   "b1"
    t.string   "b2"
    t.string   "b3"
    t.string   "b4"
    t.string   "b5"
    t.string   "b6"
    t.string   "b7"
    t.string   "b8"
    t.string   "b9"
    t.string   "b10"
    t.string   "c1"
    t.string   "c2"
    t.string   "c3"
    t.string   "c4"
    t.string   "c5"
    t.string   "c6"
    t.string   "c7"
    t.string   "c8"
    t.string   "c9"
    t.string   "c10"
    t.string   "d1"
    t.string   "d2"
    t.string   "d3"
    t.string   "d4"
    t.string   "d5"
    t.string   "d6"
    t.string   "d7"
    t.string   "d8"
    t.string   "d9"
    t.string   "d10"
    t.string   "e1"
    t.string   "e2"
    t.string   "e3"
    t.string   "e4"
    t.string   "e5"
    t.string   "e6"
    t.string   "e7"
    t.string   "e8"
    t.string   "e9"
    t.string   "e10"
    t.string   "f1"
    t.string   "f2"
    t.string   "f3"
    t.string   "f4"
    t.string   "f5"
    t.string   "f6"
    t.string   "f7"
    t.string   "f8"
    t.string   "f9"
    t.string   "f10"
    t.string   "g1"
    t.string   "g2"
    t.string   "g3"
    t.string   "g4"
    t.string   "g5"
    t.string   "g6"
    t.string   "g7"
    t.string   "g8"
    t.string   "g9"
    t.string   "g10"
    t.string   "h1"
    t.string   "h2"
    t.string   "h3"
    t.string   "h4"
    t.string   "h5"
    t.string   "h6"
    t.string   "h7"
    t.string   "h8"
    t.string   "h9"
    t.string   "h10"
    t.string   "i1"
    t.string   "i2"
    t.string   "i3"
    t.string   "i4"
    t.string   "i5"
    t.string   "i6"
    t.string   "i7"
    t.string   "i8"
    t.string   "i9"
    t.string   "i10"
    t.string   "j1"
    t.string   "j2"
    t.string   "j3"
    t.string   "j4"
    t.string   "j5"
    t.string   "j6"
    t.string   "j7"
    t.string   "j8"
    t.string   "j9"
    t.string   "j10"
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "squares", force: :cascade do |t|
    t.string   "coordinates"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150318201456) do

  create_table "characters", :force => true do |t|
    t.text    "name"
    t.text    "description"
    t.integer "user_id"
    t.integer "team_id"
    t.text    "image"
    t.integer "popularity"
  end

  create_table "characters_wishlists", :force => true do |t|
    t.integer "character_id"
    t.integer "wishlist_id"
  end

  create_table "messages", :force => true do |t|
    t.text    "body"
    t.integer "from_user_id"
    t.integer "to_user_id"
    t.text    "viewed"
    t.text    "trade"
    t.integer "offered_char"
    t.integer "requested_char"
  end

  create_table "teams", :force => true do |t|
    t.text    "name"
    t.integer "user_id"
    t.text    "slug"
  end

  create_table "users", :force => true do |t|
    t.text "name"
    t.text "password"
    t.text "image"
  end

  create_table "wishlists", :force => true do |t|
    t.text    "name"
    t.integer "user_id"
    t.text    "offer"
  end

end

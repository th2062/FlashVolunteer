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

ActiveRecord::Schema.define(:version => 20120420062309) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "created"
    t.datetime "start"
    t.datetime "end"
    t.integer  "neighborhood_id"
    t.integer  "creator_id"
    t.integer  "User_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
    t.string   "city"
    t.integer  "zip"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "state",                :default => "WA"
    t.string   "website"
    t.text     "special_instructions"
    t.string   "twitter_hashtags"
  end

  create_table "neighborhoods", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orgs_admins", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "org_id"
  end

  create_table "orgs_followers", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "org_id"
  end

  create_table "participations", :force => true do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.integer "hours_volunteered"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "skills", :force => true do |t|
    t.string  "name"
    t.integer "offset"
  end

  create_table "skills_events", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "event_id"
  end

  create_table "skills_users", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "neighborhood_id"
    t.date     "birthday"
    t.integer  "org_id"
    t.string   "type"
    t.string   "mission"
    t.string   "vision"
    t.text     "description"
    t.text     "website"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_followers", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "follower_id"
  end

end

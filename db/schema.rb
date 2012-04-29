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

ActiveRecord::Schema.define(:version => 20120427043620) do

  create_table "categories", :force => true do |t|
    t.string "name"
    t.string "short_name"
  end

  create_table "categories_posts", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "post_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "observation"
    t.string   "type"
    t.string   "user_id"
    t.date     "observed_on"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "posts_pupils", :id => false, :force => true do |t|
    t.integer "post_id"
    t.integer "pupil_id"
  end

  create_table "posts_uploads", :force => true do |t|
    t.integer "post_id"
    t.integer "upload_id"
  end

  add_index "posts_uploads", ["post_id", "upload_id"], :name => "index_posts_uploads_on_post_id_and_upload_id"

  create_table "pupils", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uploads", :force => true do |t|
    t.string   "file"
    t.string   "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "uploads", ["user_id"], :name => "index_uploads_on_user_id"

end

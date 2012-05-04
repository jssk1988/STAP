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

ActiveRecord::Schema.define(:version => 20120429025714) do

  create_table "authors", :force => true do |t|
    t.integer "user_id"
    t.string  "real_name"
    t.string  "id_card"
  end

  create_table "awards", :force => true do |t|
    t.integer "school_articles_id"
    t.string  "name"
    t.string  "project_name"
    t.string  "department"
    t.integer "type"
    t.integer "degree"
    t.date    "award_time"
    t.string  "who_finished"
  end

  create_table "company_articles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "industry_dictionary_id"
    t.string   "title"
    t.decimal  "money",                  :precision => 10, :scale => 0
    t.string   "principal"
    t.string   "tel"
    t.text     "content"
    t.string   "cooperation_type"
    t.string   "docs_url"
    t.integer  "scan_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flag"
  end

  create_table "company_keywords", :force => true do |t|
    t.string  "name"
    t.integer "company_article_id"
    t.boolean "type"
  end

  create_table "company_user_infos", :force => true do |t|
    t.integer  "user_id"
    t.string   "real_name"
    t.string   "id_card"
    t.string   "position"
    t.string   "tel"
    t.string   "company_name"
    t.date     "found_time"
    t.integer  "industry_dictionary_id"
    t.float    "register_fund"
    t.string   "authentication_files_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_user_infos", ["industry_dictionary_id"], :name => "index_company_user_infos_on_industry_dictionary_id"
  add_index "company_user_infos", ["user_id"], :name => "index_company_user_infos_on_user_id"

  create_table "dictionary_trees", :force => true do |t|
    t.string "name"
    t.string "ancestry"
  end

  add_index "dictionary_trees", ["ancestry"], :name => "index_dictionary_trees_on_ancestry"

  create_table "power_lists", :force => true do |t|
    t.integer "user_id"
    t.integer "sys_role_id"
  end

  create_table "school_articles", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "article_type"
    t.integer  "industry_dictionary_id"
    t.string   "patent_number"
    t.string   "principal"
    t.string   "tel"
    t.text     "content"
    t.string   "docs_url"
    t.integer  "scan_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flag"
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
  end

  create_table "school_articles_authors_lists", :force => true do |t|
    t.integer "school_articles_id"
    t.integer "author_id"
  end

  create_table "school_keywords", :force => true do |t|
    t.string  "name"
    t.integer "school_articles_id"
    t.boolean "type"
  end

  create_table "school_user_infos", :force => true do |t|
    t.integer "user_id"
    t.string  "real_name"
    t.string  "id_card"
    t.string  "school_name"
    t.string  "qualification"
    t.string  "position"
    t.string  "photo_url"
    t.string  "tel"
    t.text    "description"
    t.integer "subject_dictionary_id"
    t.text    "research_info"
  end

  add_index "school_user_infos", ["user_id"], :name => "index_school_user_infos_on_user_id"

  create_table "sys_roles", :force => true do |t|
    t.string   "role_name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flag"
  end

end

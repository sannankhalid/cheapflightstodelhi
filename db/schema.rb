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

ActiveRecord::Schema.define(:version => 20110415154825) do

  create_table "airline_classes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "airlines", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.integer "country_id",               :null => false
    t.integer "state_id",                 :null => false
    t.string  "name",       :limit => 45, :null => false
    t.float   "latitude",                 :null => false
    t.float   "longitude",                :null => false
    t.string  "timezone",   :limit => 10, :null => false
    t.integer "dma_id"
    t.string  "code",       :limit => 4
  end

  add_index "cities", ["name"], :name => "index_cities_on_name"

  create_table "countries", :force => true do |t|
    t.string  "name",                 :limit => 50, :null => false
    t.string  "fips104",              :limit => 2,  :null => false
    t.string  "iso2",                 :limit => 2,  :null => false
    t.string  "iso3",                 :limit => 3,  :null => false
    t.string  "ison",                 :limit => 4,  :null => false
    t.string  "internet",             :limit => 2,  :null => false
    t.string  "capital",              :limit => 25
    t.string  "map_reference",        :limit => 50
    t.string  "nationality_singular", :limit => 35
    t.string  "nationaiity_plural",   :limit => 35
    t.string  "currency",             :limit => 30
    t.string  "currency_code",        :limit => 3
    t.integer "population"
    t.string  "title",                :limit => 50
    t.string  "comment"
  end

  create_table "departures", :force => true do |t|
    t.string   "airport"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destination_photos", :force => true do |t|
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", :force => true do |t|
    t.string   "name"
    t.boolean  "category_top_destination"
    t.boolean  "category_special_offer"
    t.boolean  "category_main_page"
    t.boolean  "category_cheap_flights"
    t.integer  "position"
    t.float    "fare"
    t.text     "page_title"
    t.text     "meta_keywords"
    t.text     "meta_description"
    t.text     "body_text"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enquiry_details", :force => true do |t|
    t.string   "email"
    t.string   "mobile"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fare_details", :force => true do |t|
    t.datetime "from_date"
    t.datetime "to_date"
    t.integer  "airline_class_id"
    t.integer  "departure_id"
    t.integer  "airline_id"
    t.integer  "destination_id"
    t.float    "fare"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "title"
    t.text     "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.integer "country_id",               :null => false
    t.string  "name",       :limit => 45, :null => false
    t.string  "code",       :limit => 8,  :null => false
    t.string  "adm1code",   :limit => 4,  :null => false
  end

  create_table "subscribe_details", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

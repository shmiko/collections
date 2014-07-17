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

ActiveRecord::Schema.define(:version => 20140717105200) do

  create_table "addres", :primary_key => "ID", :force => true do |t|
    t.string  "Street"
    t.string  "Suburb"
    t.integer "Country_ID",        :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "addres", ["Suburb"], :name => "Suburb"

  create_table "artist_people", :primary_key => "ID", :force => true do |t|
    t.integer "Artist_ID",         :null => false
    t.integer "Persons_ID",        :null => false
    t.date    "Enter_Date"
    t.date    "Leave_Date"
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "artist_types", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "artist_types", ["Description"], :name => "Description"

  create_table "artists", :primary_key => "ID", :force => true do |t|
    t.string  "Name",              :null => false
    t.integer "Artist_Type_ID",    :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "artists", ["Name"], :name => "Name"

  create_table "audio_types", :primary_key => "ID", :force => true do |t|
    t.string  "name",              :limit => 50, :null => false
    t.string  "abbreviation",      :limit => 5,  :null => false
    t.string  "Description",                     :null => false
    t.date    "Created",                         :null => false
    t.date    "Updated",                         :null => false
    t.integer "Created_Person_ID",               :null => false
    t.integer "Updated_Person_ID",               :null => false
  end

  add_index "audio_types", ["Description"], :name => "Description"

  create_table "bases", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "bases", ["Description"], :name => "Description"

  create_table "binds", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "binds", ["Description"], :name => "Description"

  create_table "categories", :primary_key => "ID", :force => true do |t|
    t.integer "Category_Release_ID", :null => false
    t.integer "Category_Type_ID",    :null => false
    t.date    "Created",             :null => false
    t.date    "Updated",             :null => false
    t.integer "Created_Person_ID",   :null => false
    t.integer "Updated_Person_ID",   :null => false
  end

  create_table "category_types", :primary_key => "ID", :force => true do |t|
    t.integer "Category_Type_Collection_Type_ID", :null => false
    t.string  "Description",                      :null => false
    t.date    "Created",                          :null => false
    t.date    "Updated",                          :null => false
    t.integer "Created_Person_ID",                :null => false
    t.integer "Updated_Person_ID",                :null => false
  end

  add_index "category_types", ["Description"], :name => "Description"

  create_table "collection_types", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "collection_types", ["Description"], :name => "Description"

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "release_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["release_id"], :name => "index_comments_on_release_id"

  create_table "conditions", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "conditions", ["Description"], :name => "Description"

  create_table "countries", :primary_key => "ID", :force => true do |t|
    t.string  "Description",                    :null => false
    t.string  "ABREVIATION",       :limit => 3, :null => false
    t.date    "Created",                        :null => false
    t.date    "Updated",                        :null => false
    t.integer "Created_Person_ID",              :null => false
    t.integer "Updated_Person_ID",              :null => false
  end

  add_index "countries", ["Description"], :name => "Description"

  create_table "edition_types", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "edition_types", ["Description"], :name => "Description"

  create_table "followings", :primary_key => "ID", :force => true do |t|
    t.integer "Follower_Person_ID",  :null => false
    t.integer "Following_Person_ID", :null => false
    t.date    "Created",             :null => false
    t.date    "Updated",             :null => false
    t.integer "Created_Person_ID",   :null => false
    t.integer "Updated_Person_ID",   :null => false
  end

  create_table "format_types", :primary_key => "ID", :force => true do |t|
    t.integer "Format_Type_Collection_Type_ID", :null => false
    t.string  "Description",                    :null => false
    t.date    "Created",                        :null => false
    t.date    "Updated",                        :null => false
    t.integer "Created_Person_ID",              :null => false
    t.integer "Updated_Person_ID",              :null => false
  end

  create_table "formats", :primary_key => "ID", :force => true do |t|
    t.integer "Format_Release_ID", :null => false
    t.integer "Format_Type_ID",    :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "genre_types", :primary_key => "ID", :force => true do |t|
    t.integer "Genre_Type_Collection_Type_ID", :null => false
    t.string  "Description",                   :null => false
    t.date    "Created",                       :null => false
    t.date    "Updated",                       :null => false
    t.integer "Created_Person_ID",             :null => false
    t.integer "Updated_Person_ID",             :null => false
  end

  create_table "genres", :primary_key => "ID", :force => true do |t|
    t.integer "Genre_Release_ID",  :null => false
    t.integer "Genre_Type_ID",     :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "gradings", :primary_key => "ID", :force => true do |t|
    t.string  "Grading",           :null => false
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "gradings", ["Grading"], :name => "Grading"

  create_table "information", :primary_key => "ID", :force => true do |t|
    t.integer "Release_ID",        :null => false
    t.string  "Container",         :null => false
    t.integer "Country_ID",        :null => false
    t.string  "State",             :null => false
    t.integer "Condition_ID",      :null => false
    t.integer "Publisher_ID",      :null => false
    t.integer "Category_ID",       :null => false
    t.integer "Genre_ID",          :null => false
    t.integer "Binding_ID",        :null => false
    t.integer "Edition_Type_ID",   :null => false
    t.integer "Format_ID",         :null => false
    t.integer "Type_ID",           :null => false
    t.integer "Sub_Type_ID",       :null => false
    t.string  "Notes",             :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "information", ["Notes"], :name => "Notes"

  create_table "information_tags", :primary_key => "ID", :force => true do |t|
    t.integer "Tags_ID",           :null => false
    t.integer "Release_ID",        :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "languages", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "languages", ["Description"], :name => "Description"

  create_table "lyrics", :primary_key => "ID", :force => true do |t|
    t.integer "Tracks_ID",         :null => false
    t.text    "Lyrics",            :null => false
    t.integer "Artist_ID",         :null => false
    t.date    "Date Published",    :null => false
    t.integer "Language_ID",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "people", :primary_key => "ID", :force => true do |t|
    t.string  "Firstname",         :null => false
    t.string  "Surname",           :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "people", ["Firstname", "Surname"], :name => "Firstname"

  create_table "persons_addres", :primary_key => "ID", :force => true do |t|
    t.integer "Address_ID",        :null => false
    t.integer "Persons_ID",        :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "persons_releases", :primary_key => "ID", :force => true do |t|
    t.integer "Release_ID",        :null => false
    t.integer "Persons_ID",        :null => false
    t.integer "Own",               :null => false
    t.integer "Want",              :null => false
    t.integer "No_Of_Copies",      :null => false
    t.integer "Audio_Type_ID",     :null => false
    t.string  "Filehash_type",     :null => false
    t.string  "Filehash",          :null => false
    t.string  "Filesize",          :null => false
    t.string  "Bitrate",           :null => false
    t.string  "Size",              :null => false
    t.string  "Dimensions",        :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
    t.integer "grading_id",        :null => false
  end

  add_index "persons_releases", ["Filesize", "Bitrate"], :name => "Filesize"

  create_table "pictures", :primary_key => "ID", :force => true do |t|
    t.integer "Release_ID",        :null => false
    t.string  "Front",             :null => false
    t.string  "Back",              :null => false
    t.string  "Front_Flap",        :null => false
    t.string  "Back_Flap",         :null => false
    t.string  "Inner_Page_1",      :null => false
    t.string  "Inner_Page_2",      :null => false
    t.string  "Inner_Page_3",      :null => false
    t.string  "Inner_Page_4",      :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "publishers", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "publishers", ["Description"], :name => "Description"

  create_table "ratings", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "ratings", ["Description"], :name => "Description"

  create_table "recording_types", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "recording_types", ["Description"], :name => "Description"

  create_table "related_releases", :primary_key => "ID", :force => true do |t|
    t.integer "Related_From_Release_ID", :null => false
    t.integer "Related_To_Release_ID",   :null => false
    t.date    "Created",                 :null => false
    t.date    "Updated",                 :null => false
    t.integer "Created_Person_ID",       :null => false
    t.integer "Updated_Person_ID",       :null => false
  end

  create_table "release_languages", :primary_key => "ID", :force => true do |t|
    t.integer "Release_ID",        :null => false
    t.integer "Language_ID",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "release_loans", :primary_key => "ID", :force => true do |t|
    t.integer "Release_ID",        :null => false
    t.integer "Person_From_ID",    :null => false
    t.integer "Person_To_ID",      :null => false
    t.date    "Loan_Out_Date",     :null => false
    t.date    "Due_Back_Date",     :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "release_loans", ["Loan_Out_Date", "Due_Back_Date"], :name => "Loan_Out_Date"

  create_table "release_tracks", :primary_key => "ID", :force => true do |t|
    t.integer "Release_ID",        :null => false
    t.integer "Tracks_ID",         :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  create_table "releases", :primary_key => "ID", :force => true do |t|
    t.integer "Base_ID",            :null => false
    t.integer "Artist_ID",          :null => false
    t.integer "Collection_Type_ID", :null => false
    t.string  "Title",              :null => false
    t.string  "Description",        :null => false
    t.date    "Release_Date",       :null => false
    t.string  "Cat_No",             :null => false
    t.integer "Rating_ID",          :null => false
    t.string  "Edition_Comment",    :null => false
    t.date    "Created",            :null => false
    t.date    "Updated",            :null => false
    t.integer "Created_Person_ID",  :null => false
    t.integer "Updated_Person_ID",  :null => false
    t.integer "user_id"
  end

  add_index "releases", ["Title", "Release_Date", "Cat_No"], :name => "Title"

  create_table "subtypes", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "subtypes", ["Description"], :name => "Description"

  create_table "tags", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "tags", ["Description"], :name => "Description"

  create_table "technicals", :primary_key => "ID", :force => true do |t|
    t.integer "Release_ID",          :null => false
    t.string  "Bitrate",             :null => false
    t.string  "Size",                :null => false
    t.string  "Dimensions",          :null => false
    t.integer "Recording_Type_ID",   :null => false
    t.string  "ISBN10",              :null => false
    t.string  "ISBN13",              :null => false
    t.string  "External_References", :null => false
    t.date    "Created",             :null => false
    t.date    "Modified",            :null => false
    t.string  "Service",             :null => false
    t.string  "Service_URL",         :null => false
    t.string  "Webpage",             :null => false
    t.string  "Volume_nr",           :null => false
    t.string  "Volume_Name",         :null => false
    t.string  "Series",              :null => false
    t.integer "Pages",               :null => false
    t.string  "Storage_Medium",      :null => false
    t.string  "Technical_Notes",     :null => false
    t.integer "No_of_Discs",         :null => false
    t.string  "Total_Runtime",       :null => false
    t.string  "Value_High",          :null => false
    t.string  "Value_Med",           :null => false
    t.string  "Value_Low",           :null => false
    t.integer "Created_Person_ID",   :null => false
    t.integer "Updated_Person_ID",   :null => false
  end

  create_table "tracks", :primary_key => "ID", :force => true do |t|
    t.integer "Base_ID",           :null => false
    t.string  "Title",             :null => false
    t.string  "Length",            :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "tracks", ["Title"], :name => "Title"

  create_table "types", :primary_key => "ID", :force => true do |t|
    t.string  "Description",       :null => false
    t.date    "Created",           :null => false
    t.date    "Updated",           :null => false
    t.integer "Created_Person_ID", :null => false
    t.integer "Updated_Person_ID", :null => false
  end

  add_index "types", ["Description"], :name => "Description"

  create_table "users", :force => true do |t|
    t.string   "email",               :default => "", :null => false
    t.string   "encrypted_password",  :default => "", :null => false
    t.datetime "remember_created_at"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end

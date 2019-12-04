# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_04_112316) do

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.date "dob"
    t.string "email"
    t.string "mobile"
    t.string "gender"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "pincode"
    t.string "blood"
    t.string "ename"
    t.string "econtact"
    t.string "pskill"
    t.string "sskill1"
    t.string "sskill2"
    t.string "role"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.decimal "bp", default: "0.0"
    t.decimal "hra", default: "0.0"
    t.decimal "cca", default: "0.0"
    t.decimal "sa", default: "0.0"
    t.decimal "ta", default: "0.0"
    t.decimal "reim", default: "0.0"
    t.decimal "it", default: "0.0"
    t.decimal "pt", default: "0.0"
    t.decimal "lop", default: "0.0"
    t.decimal "od", default: "0.0"
    t.decimal "basic"
    t.decimal "gsal", default: "0.0"
    t.decimal "nol", default: "0.0"
    t.decimal "ns", default: "0.0"
  end

end

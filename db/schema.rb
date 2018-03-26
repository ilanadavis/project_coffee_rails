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

ActiveRecord::Schema.define(version: 20180326230424) do

  create_table "hr_forms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.string "title"
    t.string "manager_name"
    t.string "department"
    t.date "hire_date"
    t.integer "annual_base_salary"
    t.integer "variable_salary"
    t.integer "total_annual_salary"
    t.date "change_effective_date"
    t.string "new_title"
    t.string "new_manager_name"
    t.integer "new_annual_base_salary"
    t.integer "new_variable_salary"
    t.integer "new_total_annual_salary"
    t.date "termination_effective_date"
    t.date "last_day_worked"
    t.string "forward_email_to"
    t.string "forward_phone_to"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

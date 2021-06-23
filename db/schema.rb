# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_210_524_043_255) do
  create_table 'courses', force: :cascade do |t|
    t.string 'course_code'
    t.string 'course_name'
    t.integer 'year'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'student_teachers', force: :cascade do |t|
    t.integer 'student_id'
    t.integer 'teacher_id'
  end

  create_table 'students', force: :cascade do |t|
    t.integer 'roll_no'
    t.string 'name'
    t.string 'email'
    t.integer 'contact'
    t.date 'date_of_birth'
    t.string 'gender'
    t.string 'state'
    t.string 'city'
    t.string 'father_name'
    t.string 'father_occupation'
    t.string 'mother_name'
    t.string 'mother_occupation'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.integer 'course_id'
  end

  create_table 'subjects', force: :cascade do |t|
    t.string 'subject_code'
    t.string 'subject_name'
    t.string 'subject_type'
    t.integer 'theory_mark'
    t.integer 'practical_mark'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'teachers', force: :cascade do |t|
    t.integer 'teacher_id'
    t.string 'teacher_name'
    t.string 'state'
    t.string 'city'
    t.string 'qualification'
    t.string 'email'
    t.integer 'contact'
    t.integer 'experience'
    t.date 'date_of_birth'
    t.string 'gender'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'password_digest'
    t.boolean 'admin', default: false
  end
end

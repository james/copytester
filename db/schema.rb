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

ActiveRecord::Schema.define(version: 20140320224942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "copy_samples", force: true do |t|
    t.text     "copy"
    t.integer  "copy_test_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "responses_count"
    t.boolean  "published"
  end

  create_table "copy_tests", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_answers", force: true do |t|
    t.integer  "question_id"
    t.string   "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_answers", ["question_id"], name: "index_question_answers_on_question_id", using: :btree

  create_table "questions", force: true do |t|
    t.integer  "copy_test_id"
    t.string   "question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "correct_question_answer_id"
  end

  add_index "questions", ["copy_test_id"], name: "index_questions_on_copy_test_id", using: :btree
  add_index "questions", ["correct_question_answer_id"], name: "index_questions_on_correct_question_answer_id", using: :btree

  create_table "response_answers", force: true do |t|
    t.integer  "response_id"
    t.integer  "question_answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "response_answers", ["question_answer_id"], name: "index_response_answers_on_question_answer_id", using: :btree
  add_index "response_answers", ["response_id"], name: "index_response_answers_on_response_id", using: :btree

  create_table "responses", force: true do |t|
    t.integer  "copy_sample_id"
    t.integer  "time_taken"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "browser_agent_string"
    t.integer  "trust_rating"
  end

  add_index "responses", ["copy_sample_id"], name: "index_responses_on_copy_sample_id", using: :btree

end

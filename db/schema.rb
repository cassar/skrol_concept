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

ActiveRecord::Schema.define(version: 20_150_712_141_155) do
  create_table 'friendly_id_slugs', force: :cascade do |t|
    t.string 'slug',                      null: false
    t.integer 'sluggable_id',              null: false
    t.string 'sluggable_type', limit: 50
    t.string 'scope'
    t.datetime 'created_at'
  end

  add_index 'friendly_id_slugs', %w(slug sluggable_type scope), name: 'index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope', unique: true
  add_index 'friendly_id_slugs', %w(slug sluggable_type), name: 'index_friendly_id_slugs_on_slug_and_sluggable_type'
  add_index 'friendly_id_slugs', ['sluggable_id'], name: 'index_friendly_id_slugs_on_sluggable_id'
  add_index 'friendly_id_slugs', ['sluggable_type'], name: 'index_friendly_id_slugs_on_sluggable_type'

  create_table 'sentences', force: :cascade do |t|
    t.string 'english_sentence'
    t.string 'english_phonetic'
    t.string 'german_sentence'
    t.string 'german_phonetic'
    t.string 'japanese_sentence'
    t.string 'japanese_romaji'
    t.string 'image'
    t.datetime 'created_at',          null: false
    t.datetime 'updated_at',          null: false
    t.string 'portuguese_sentence'
    t.string 'portuguese_phonetic'
    t.string 'chinese_traditional'
    t.string 'chinese_simplified'
    t.string 'chinese_phonetic'
    t.string 'maltese_sentence'
    t.string 'maltese_phonetic'
    t.string 'norse_sentence'
    t.string 'norse_phonetic'
  end

  create_table 'snapshots', force: :cascade do |t|
    t.string 'title'
    t.string 'language'
    t.text 'entry'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end

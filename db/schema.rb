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

ActiveRecord::Schema.define(version: 20150927044740) do

  create_table "a_dmm_details", force: :cascade do |t|
    t.integer  "a_idollist_id", limit: 4,   null: false
    t.string   "title",         limit: 255, null: false
    t.string   "dvd_thumbnail", limit: 255, null: false
    t.string   "dvd_url",       limit: 255, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "a_dmm_details", ["a_idollist_id"], name: "index_a_dmm_details_on_a_idollist_id", using: :btree

  create_table "a_dmm_mains", force: :cascade do |t|
    t.integer  "a_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",     limit: 255, null: false
    t.string   "detail_url",    limit: 255, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "a_dmm_mains", ["a_idollist_id"], name: "index_a_dmm_mains_on_a_idollist_id", unique: true, using: :btree

  create_table "a_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "a_idollists", ["bust"], name: "index_a_idollists_on_bust", using: :btree
  add_index "a_idollists", ["cup"], name: "index_a_idollists_on_cup", using: :btree
  add_index "a_idollists", ["family_name_kana", "given_name_kana"], name: "index_a_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "a_movies", force: :cascade do |t|
    t.integer  "a_idollist_id",   limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "a_movies", ["a_idollist_id"], name: "index_a_movies_on_a_idollist_id", using: :btree
  add_index "a_movies", ["movie_thumbnail"], name: "index_a_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "a_movies", ["url"], name: "index_a_movies_on_url", unique: true, using: :btree

  create_table "a_tmp_movies", force: :cascade do |t|
    t.integer  "a_idollist_id",   limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "a_tmp_movies", ["a_idollist_id"], name: "index_a_tmp_movies_on_a_idollist_id", using: :btree
  add_index "a_tmp_movies", ["movie_thumbnail"], name: "index_a_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "a_tmp_movies", ["url"], name: "index_a_tmp_movies_on_url", unique: true, using: :btree

  create_table "ha_dmm_details", force: :cascade do |t|
    t.integer  "ha_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ha_dmm_details", ["ha_idollist_id"], name: "index_ha_dmm_details_on_ha_idollist_id", using: :btree

  create_table "ha_dmm_mains", force: :cascade do |t|
    t.integer  "ha_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ha_dmm_mains", ["ha_idollist_id"], name: "index_ha_dmm_mains_on_ha_idollist_id", unique: true, using: :btree

  create_table "ha_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ha_idollists", ["bust"], name: "index_ha_idollists_on_bust", using: :btree
  add_index "ha_idollists", ["cup"], name: "index_ha_idollists_on_cup", using: :btree
  add_index "ha_idollists", ["family_name_kana", "given_name_kana"], name: "index_ha_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "ha_movies", force: :cascade do |t|
    t.integer  "ha_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ha_movies", ["ha_idollist_id"], name: "index_ha_movies_on_ha_idollist_id", using: :btree
  add_index "ha_movies", ["movie_thumbnail"], name: "index_ha_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ha_movies", ["url"], name: "index_ha_movies_on_url", unique: true, using: :btree

  create_table "ha_tmp_movies", force: :cascade do |t|
    t.integer  "ha_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ha_tmp_movies", ["ha_idollist_id"], name: "index_ha_tmp_movies_on_ha_idollist_id", using: :btree
  add_index "ha_tmp_movies", ["movie_thumbnail"], name: "index_ha_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ha_tmp_movies", ["url"], name: "index_ha_tmp_movies_on_url", unique: true, using: :btree

  create_table "idollists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ka_dmm_details", force: :cascade do |t|
    t.integer  "ka_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ka_dmm_details", ["ka_idollist_id"], name: "index_ka_dmm_details_on_ka_idollist_id", using: :btree

  create_table "ka_dmm_mains", force: :cascade do |t|
    t.integer  "ka_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ka_dmm_mains", ["ka_idollist_id"], name: "index_ka_dmm_mains_on_ka_idollist_id", unique: true, using: :btree

  create_table "ka_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ka_idollists", ["bust"], name: "index_ka_idollists_on_bust", using: :btree
  add_index "ka_idollists", ["cup"], name: "index_ka_idollists_on_cup", using: :btree
  add_index "ka_idollists", ["family_name_kana", "given_name_kana"], name: "index_ka_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "ka_movies", force: :cascade do |t|
    t.integer  "ka_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ka_movies", ["ka_idollist_id"], name: "index_ka_movies_on_ka_idollist_id", using: :btree
  add_index "ka_movies", ["movie_thumbnail"], name: "index_ka_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ka_movies", ["url"], name: "index_ka_movies_on_url", unique: true, using: :btree

  create_table "ka_tmp_movies", force: :cascade do |t|
    t.integer  "ka_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ka_tmp_movies", ["ka_idollist_id"], name: "index_ka_tmp_movies_on_ka_idollist_id", using: :btree
  add_index "ka_tmp_movies", ["movie_thumbnail"], name: "index_ka_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ka_tmp_movies", ["url"], name: "index_ka_tmp_movies_on_url", unique: true, using: :btree

  create_table "ma_dmm_details", force: :cascade do |t|
    t.integer  "ma_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ma_dmm_details", ["ma_idollist_id"], name: "index_ma_dmm_details_on_ma_idollist_id", using: :btree

  create_table "ma_dmm_mains", force: :cascade do |t|
    t.integer  "ma_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ma_dmm_mains", ["ma_idollist_id"], name: "index_ma_dmm_mains_on_ma_idollist_id", unique: true, using: :btree

  create_table "ma_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ma_idollists", ["bust"], name: "index_ma_idollists_on_bust", using: :btree
  add_index "ma_idollists", ["cup"], name: "index_ma_idollists_on_cup", using: :btree
  add_index "ma_idollists", ["family_name_kana", "given_name_kana"], name: "index_ma_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "ma_movies", force: :cascade do |t|
    t.integer  "ma_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ma_movies", ["ma_idollist_id"], name: "index_ma_movies_on_ma_idollist_id", using: :btree
  add_index "ma_movies", ["movie_thumbnail"], name: "index_ma_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ma_movies", ["url"], name: "index_ma_movies_on_url", unique: true, using: :btree

  create_table "ma_tmp_movies", force: :cascade do |t|
    t.integer  "ma_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ma_tmp_movies", ["ma_idollist_id"], name: "index_ma_tmp_movies_on_ma_idollist_id", using: :btree
  add_index "ma_tmp_movies", ["movie_thumbnail"], name: "index_ma_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ma_tmp_movies", ["url"], name: "index_ma_tmp_movies_on_url", unique: true, using: :btree

  create_table "na_dmm_details", force: :cascade do |t|
    t.integer  "na_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "na_dmm_details", ["na_idollist_id"], name: "index_na_dmm_details_on_na_idollist_id", using: :btree

  create_table "na_dmm_mains", force: :cascade do |t|
    t.integer  "na_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "na_dmm_mains", ["na_idollist_id"], name: "index_na_dmm_mains_on_na_idollist_id", unique: true, using: :btree

  create_table "na_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "na_idollists", ["bust"], name: "index_na_idollists_on_bust", using: :btree
  add_index "na_idollists", ["cup"], name: "index_na_idollists_on_cup", using: :btree
  add_index "na_idollists", ["family_name_kana", "given_name_kana"], name: "index_na_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "na_movies", force: :cascade do |t|
    t.integer  "na_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "na_movies", ["movie_thumbnail"], name: "index_na_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "na_movies", ["na_idollist_id"], name: "index_na_movies_on_na_idollist_id", using: :btree
  add_index "na_movies", ["url"], name: "index_na_movies_on_url", unique: true, using: :btree

  create_table "na_tmp_movies", force: :cascade do |t|
    t.integer  "na_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "na_tmp_movies", ["movie_thumbnail"], name: "index_na_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "na_tmp_movies", ["na_idollist_id"], name: "index_na_tmp_movies_on_na_idollist_id", using: :btree
  add_index "na_tmp_movies", ["url"], name: "index_na_tmp_movies_on_url", unique: true, using: :btree

  create_table "ra_dmm_details", force: :cascade do |t|
    t.integer  "ra_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ra_dmm_details", ["ra_idollist_id"], name: "index_ra_dmm_details_on_ra_idollist_id", using: :btree

  create_table "ra_dmm_mains", force: :cascade do |t|
    t.integer  "ra_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ra_dmm_mains", ["ra_idollist_id"], name: "index_ra_dmm_mains_on_ra_idollist_id", unique: true, using: :btree

  create_table "ra_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ra_idollists", ["bust"], name: "index_ra_idollists_on_bust", using: :btree
  add_index "ra_idollists", ["cup"], name: "index_ra_idollists_on_cup", using: :btree
  add_index "ra_idollists", ["family_name_kana", "given_name_kana"], name: "index_ra_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "ra_movies", force: :cascade do |t|
    t.integer  "ra_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ra_movies", ["movie_thumbnail"], name: "index_ra_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ra_movies", ["ra_idollist_id"], name: "index_ra_movies_on_ra_idollist_id", using: :btree
  add_index "ra_movies", ["url"], name: "index_ra_movies_on_url", unique: true, using: :btree

  create_table "ra_tmp_movies", force: :cascade do |t|
    t.integer  "ra_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ra_tmp_movies", ["movie_thumbnail"], name: "index_ra_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ra_tmp_movies", ["ra_idollist_id"], name: "index_ra_tmp_movies_on_ra_idollist_id", using: :btree
  add_index "ra_tmp_movies", ["url"], name: "index_ra_tmp_movies_on_url", unique: true, using: :btree

  create_table "sa_dmm_details", force: :cascade do |t|
    t.integer  "sa_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "sa_dmm_details", ["sa_idollist_id"], name: "index_sa_dmm_details_on_sa_idollist_id", using: :btree

  create_table "sa_dmm_mains", force: :cascade do |t|
    t.integer  "sa_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "sa_dmm_mains", ["sa_idollist_id"], name: "index_sa_dmm_mains_on_sa_idollist_id", unique: true, using: :btree

  create_table "sa_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "sa_idollists", ["bust"], name: "index_sa_idollists_on_bust", using: :btree
  add_index "sa_idollists", ["cup"], name: "index_sa_idollists_on_cup", using: :btree
  add_index "sa_idollists", ["family_name_kana", "given_name_kana"], name: "index_sa_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "sa_movies", force: :cascade do |t|
    t.integer  "sa_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "sa_movies", ["movie_thumbnail"], name: "index_sa_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "sa_movies", ["sa_idollist_id"], name: "index_sa_movies_on_sa_idollist_id", using: :btree
  add_index "sa_movies", ["url"], name: "index_sa_movies_on_url", unique: true, using: :btree

  create_table "sa_tmp_movies", force: :cascade do |t|
    t.integer  "sa_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "sa_tmp_movies", ["movie_thumbnail"], name: "index_sa_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "sa_tmp_movies", ["sa_idollist_id"], name: "index_sa_tmp_movies_on_sa_idollist_id", using: :btree
  add_index "sa_tmp_movies", ["url"], name: "index_sa_tmp_movies_on_url", unique: true, using: :btree

  create_table "ta_dmm_details", force: :cascade do |t|
    t.integer  "ta_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ta_dmm_details", ["ta_idollist_id"], name: "index_ta_dmm_details_on_ta_idollist_id", using: :btree

  create_table "ta_dmm_mains", force: :cascade do |t|
    t.integer  "ta_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ta_dmm_mains", ["ta_idollist_id"], name: "index_ta_dmm_mains_on_ta_idollist_id", unique: true, using: :btree

  create_table "ta_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ta_idollists", ["bust"], name: "index_ta_idollists_on_bust", using: :btree
  add_index "ta_idollists", ["cup"], name: "index_ta_idollists_on_cup", using: :btree
  add_index "ta_idollists", ["family_name_kana", "given_name_kana"], name: "index_ta_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "ta_movies", force: :cascade do |t|
    t.integer  "ta_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ta_movies", ["movie_thumbnail"], name: "index_ta_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ta_movies", ["ta_idollist_id"], name: "index_ta_movies_on_ta_idollist_id", using: :btree
  add_index "ta_movies", ["url"], name: "index_ta_movies_on_url", unique: true, using: :btree

  create_table "ta_tmp_movies", force: :cascade do |t|
    t.integer  "ta_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ta_tmp_movies", ["movie_thumbnail"], name: "index_ta_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ta_tmp_movies", ["ta_idollist_id"], name: "index_ta_tmp_movies_on_ta_idollist_id", using: :btree
  add_index "ta_tmp_movies", ["url"], name: "index_ta_tmp_movies_on_url", unique: true, using: :btree

  create_table "wa_dmm_details", force: :cascade do |t|
    t.integer  "wa_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "wa_dmm_details", ["wa_idollist_id"], name: "index_wa_dmm_details_on_wa_idollist_id", using: :btree

  create_table "wa_dmm_mains", force: :cascade do |t|
    t.integer  "wa_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "wa_dmm_mains", ["wa_idollist_id"], name: "index_wa_dmm_mains_on_wa_idollist_id", unique: true, using: :btree

  create_table "wa_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "wa_idollists", ["bust"], name: "index_wa_idollists_on_bust", using: :btree
  add_index "wa_idollists", ["cup"], name: "index_wa_idollists_on_cup", using: :btree
  add_index "wa_idollists", ["family_name_kana", "given_name_kana"], name: "index_wa_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "wa_movies", force: :cascade do |t|
    t.integer  "wa_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "wa_movies", ["movie_thumbnail"], name: "index_wa_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "wa_movies", ["url"], name: "index_wa_movies_on_url", unique: true, using: :btree
  add_index "wa_movies", ["wa_idollist_id"], name: "index_wa_movies_on_wa_idollist_id", using: :btree

  create_table "wa_tmp_movies", force: :cascade do |t|
    t.integer  "wa_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "wa_tmp_movies", ["movie_thumbnail"], name: "index_wa_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "wa_tmp_movies", ["url"], name: "index_wa_tmp_movies_on_url", unique: true, using: :btree
  add_index "wa_tmp_movies", ["wa_idollist_id"], name: "index_wa_tmp_movies_on_wa_idollist_id", using: :btree

  create_table "ya_dmm_details", force: :cascade do |t|
    t.integer  "ya_idollist_id", limit: 4,   null: false
    t.string   "title",          limit: 255, null: false
    t.string   "dvd_thumbnail",  limit: 255, null: false
    t.string   "dvd_url",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ya_dmm_details", ["ya_idollist_id"], name: "index_ya_dmm_details_on_ya_idollist_id", using: :btree

  create_table "ya_dmm_mains", force: :cascade do |t|
    t.integer  "ya_idollist_id", limit: 4,   null: false
    t.string   "thumbnail",      limit: 255, null: false
    t.string   "detail_url",     limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ya_dmm_mains", ["ya_idollist_id"], name: "index_ya_dmm_mains_on_ya_idollist_id", unique: true, using: :btree

  create_table "ya_idollists", force: :cascade do |t|
    t.string   "idol_name",        limit: 255, null: false
    t.string   "wiki_name",        limit: 255, null: false
    t.string   "family_name_kana", limit: 255, null: false
    t.string   "given_name_kana",  limit: 255, null: false
    t.integer  "year",             limit: 4
    t.integer  "month",            limit: 4
    t.integer  "day",              limit: 4
    t.integer  "height",           limit: 4
    t.integer  "bust",             limit: 4
    t.integer  "west",             limit: 4
    t.integer  "hip",              limit: 4
    t.string   "cup",              limit: 255, null: false
    t.string   "twitter",          limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ya_idollists", ["bust"], name: "index_ya_idollists_on_bust", using: :btree
  add_index "ya_idollists", ["cup"], name: "index_ya_idollists_on_cup", using: :btree
  add_index "ya_idollists", ["family_name_kana", "given_name_kana"], name: "index_ya_idollists_on_family_name_kana_and_given_name_kana", using: :btree

  create_table "ya_movies", force: :cascade do |t|
    t.integer  "ya_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ya_movies", ["movie_thumbnail"], name: "index_ya_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ya_movies", ["url"], name: "index_ya_movies_on_url", unique: true, using: :btree
  add_index "ya_movies", ["ya_idollist_id"], name: "index_ya_movies_on_ya_idollist_id", using: :btree

  create_table "ya_tmp_movies", force: :cascade do |t|
    t.integer  "ya_idollist_id",  limit: 4,   null: false
    t.string   "movie_thumbnail", limit: 255, null: false
    t.string   "url",             limit: 255, null: false
    t.string   "description",     limit: 255, null: false
    t.string   "link",            limit: 255, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ya_tmp_movies", ["movie_thumbnail"], name: "index_ya_tmp_movies_on_movie_thumbnail", unique: true, using: :btree
  add_index "ya_tmp_movies", ["url"], name: "index_ya_tmp_movies_on_url", unique: true, using: :btree
  add_index "ya_tmp_movies", ["ya_idollist_id"], name: "index_ya_tmp_movies_on_ya_idollist_id", using: :btree

end

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

ActiveRecord::Schema.define(version: 2018_04_18_234844) do

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dep_cours", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fac_dep_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_dep_cours_on_course_id"
    t.index ["fac_dep_id"], name: "index_dep_cours_on_fac_dep_id"
  end

  create_table "departments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fac_deps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "unv_fac_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_fac_deps_on_department_id"
    t.index ["unv_fac_id"], name: "index_fac_deps_on_unv_fac_id"
  end

  create_table "faculties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "content"
    t.string "file"
    t.bigint "university_id"
    t.bigint "unv_fac_id"
    t.bigint "fac_dep_id"
    t.bigint "dep_cour_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dep_cour_id"], name: "index_posts_on_dep_cour_id"
    t.index ["fac_dep_id"], name: "index_posts_on_fac_dep_id"
    t.index ["university_id"], name: "index_posts_on_university_id"
    t.index ["unv_fac_id"], name: "index_posts_on_unv_fac_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "universities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "web_site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["web_site_id"], name: "index_universities_on_web_site_id"
  end

  create_table "unv_facs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "university_id"
    t.bigint "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_unv_facs_on_faculty_id"
    t.index ["university_id"], name: "index_unv_facs_on_university_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "surname"
    t.boolean "isAdmin"
    t.bigint "university_id"
    t.bigint "unv_fac_id"
    t.bigint "fac_dep_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["fac_dep_id"], name: "index_users_on_fac_dep_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["university_id"], name: "index_users_on_university_id"
    t.index ["unv_fac_id"], name: "index_users_on_unv_fac_id"
  end

  create_table "web_sites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dep_cours", "courses"
  add_foreign_key "dep_cours", "fac_deps"
  add_foreign_key "fac_deps", "departments"
  add_foreign_key "fac_deps", "unv_facs"
  add_foreign_key "posts", "dep_cours"
  add_foreign_key "posts", "fac_deps"
  add_foreign_key "posts", "universities"
  add_foreign_key "posts", "unv_facs"
  add_foreign_key "posts", "users"
  add_foreign_key "universities", "web_sites"
  add_foreign_key "unv_facs", "faculties"
  add_foreign_key "unv_facs", "universities"
end

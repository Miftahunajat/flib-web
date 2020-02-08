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

ActiveRecord::Schema.define(version: 2020_02_08_105624) do

  create_table "benefit_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama"
    t.decimal "code", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "benefits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama"
    t.bigint "benefit_category_id"
    t.decimal "nilai_tukar", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "desc"
    t.decimal "kelas", precision: 10
    t.decimal "limit", precision: 10, default: "0"
    t.index ["benefit_category_id"], name: "index_benefits_on_benefit_category_id"
  end

  create_table "benefits_plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "benefit_id"
    t.bigint "plan_id"
    t.decimal "jumlah", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benefit_id"], name: "index_benefits_plans_on_benefit_id"
    t.index ["plan_id"], name: "index_benefits_plans_on_plan_id"
  end

  create_table "klaims", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "benefit_id"
    t.bigint "status_id"
    t.date "tanggal"
    t.decimal "jumlah", precision: 10
    t.string "photo"
    t.string "tempat"
    t.string "verify", default: "Not Claimed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "kredit"
    t.index ["benefit_id"], name: "index_klaims_on_benefit_id"
    t.index ["status_id"], name: "index_klaims_on_status_id"
    t.index ["user_id"], name: "index_klaims_on_user_id"
  end

  create_table "limits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "benefits_plan_id"
    t.bigint "pangkat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benefits_plan_id"], name: "index_limits_on_benefits_plan_id"
    t.index ["pangkat_id"], name: "index_limits_on_pangkat_id"
  end

  create_table "pangkats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama"
    t.decimal "code", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "desc"
    t.decimal "credit", precision: 10
  end

  create_table "rewards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama"
    t.date "startdate"
    t.date "enddate"
    t.decimal "jumlah_kredit", precision: 10
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "desc"
  end

  create_table "statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama_status"
    t.decimal "code", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_benefits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "benefit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benefit_id"], name: "index_user_benefits_on_benefit_id"
    t.index ["user_id"], name: "index_user_benefits_on_user_id"
  end

  create_table "user_rewards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "reward_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reward_id"], name: "index_user_rewards_on_reward_id"
    t.index ["user_id"], name: "index_user_rewards_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama"
    t.string "email"
    t.string "password"
    t.string "status"
    t.decimal "usia", precision: 5
    t.date "tanggal_masuk"
    t.decimal "jumlah_dependant", precision: 5, default: "0"
    t.decimal "jumlah_kredit", precision: 5, default: "0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pangkat_id"
    t.string "phone"
    t.index ["pangkat_id"], name: "index_users_on_pangkat_id"
  end

  create_table "users_plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_users_plans_on_plan_id"
    t.index ["user_id"], name: "index_users_plans_on_user_id"
  end

  add_foreign_key "benefits", "benefit_categories"
  add_foreign_key "benefits_plans", "benefits"
  add_foreign_key "benefits_plans", "plans"
  add_foreign_key "klaims", "benefits"
  add_foreign_key "klaims", "statuses"
  add_foreign_key "klaims", "users"
  add_foreign_key "limits", "benefits_plans"
  add_foreign_key "limits", "pangkats"
  add_foreign_key "user_benefits", "benefits"
  add_foreign_key "user_benefits", "users"
  add_foreign_key "user_rewards", "rewards"
  add_foreign_key "user_rewards", "users"
  add_foreign_key "users", "pangkats"
  add_foreign_key "users_plans", "plans"
  add_foreign_key "users_plans", "users"
end

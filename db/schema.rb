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

ActiveRecord::Schema.define(version: 20160405190330) do

  create_table "estimates", force: :cascade do |t|
    t.integer  "tonnage",           limit: 4
    t.integer  "effort",            limit: 4
    t.integer  "responsibility_id", limit: 4
    t.integer  "task_id",           limit: 4
    t.integer  "portfolio_id",      limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "estimates", ["portfolio_id"], name: "index_estimates_on_portfolio_id", using: :btree
  add_index "estimates", ["responsibility_id"], name: "index_estimates_on_responsibility_id", using: :btree
  add_index "estimates", ["task_id"], name: "index_estimates_on_task_id", using: :btree

  create_table "external_organizations", force: :cascade do |t|
    t.string   "externalOrganizationName", limit: 255
    t.integer  "seqNo",                    limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "life_cycle_steps", force: :cascade do |t|
    t.string   "lifeCycleStepName", limit: 255
    t.integer  "seqNo",             limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string   "portfolioName", limit: 255
    t.integer  "seqNo",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "responsibilities", force: :cascade do |t|
    t.string   "responsibilityName",  limit: 255
    t.integer  "seqNo",               limit: 4
    t.integer  "sub_organization_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "responsibilities", ["sub_organization_id"], name: "index_responsibilities_on_sub_organization_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "roleName",   limit: 255
    t.integer  "seqNo",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sub_organizations", force: :cascade do |t|
    t.string   "subOrganizationName",      limit: 255
    t.integer  "seqNo",                    limit: 4
    t.integer  "external_organization_id", limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "sub_organizations", ["external_organization_id"], name: "index_sub_organizations_on_external_organization_id", using: :btree

  create_table "surfaces", force: :cascade do |t|
    t.integer  "isRelated",    limit: 1
    t.integer  "role_id",      limit: 4
    t.integer  "task_id",      limit: 4
    t.integer  "portfolio_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "surfaces", ["portfolio_id"], name: "index_surfaces_on_portfolio_id", using: :btree
  add_index "surfaces", ["role_id"], name: "index_surfaces_on_role_id", using: :btree
  add_index "surfaces", ["task_id"], name: "index_surfaces_on_task_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "taskName",           limit: 255
    t.integer  "seqNo",              limit: 4
    t.integer  "life_cycle_step_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "tasks", ["life_cycle_step_id"], name: "index_tasks_on_life_cycle_step_id", using: :btree

  add_foreign_key "estimates", "portfolios"
  add_foreign_key "estimates", "responsibilities"
  add_foreign_key "estimates", "tasks"
  add_foreign_key "responsibilities", "sub_organizations"
  add_foreign_key "sub_organizations", "external_organizations"
  add_foreign_key "surfaces", "portfolios"
  add_foreign_key "surfaces", "roles"
  add_foreign_key "surfaces", "tasks"
  add_foreign_key "tasks", "life_cycle_steps"
end

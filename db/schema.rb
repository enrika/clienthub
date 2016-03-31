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

ActiveRecord::Schema.define(version: 20160331231114) do

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.date     "due_date"
    t.boolean  "next"
    t.boolean  "completed"
    t.integer  "opportunity_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "action_type"
  end

  add_index "actions", ["opportunity_id"], name: "index_actions_on_opportunity_id"

  create_table "brand_stories", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "dna"
    t.text     "audience_desc"
    t.text     "brand_msg"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "brand_stories", ["project_id"], name: "index_brand_stories_on_project_id"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "primary_color"
    t.string   "secondary_color"
    t.string   "logo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "budget_type"
    t.decimal  "budgeted_amount"
    t.decimal  "actual_amount"
    t.decimal  "expense_total"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "budgets", ["project_id"], name: "index_budgets_on_project_id"

  create_table "buttons", force: :cascade do |t|
    t.integer  "styleguide_id"
    t.text     "html"
    t.string   "color"
    t.text     "css"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "buttons", ["styleguide_id"], name: "index_buttons_on_styleguide_id"

  create_table "channels", force: :cascade do |t|
    t.integer  "marketing_plan_id"
    t.string   "name"
    t.text     "strategy"
    t.text     "goal"
    t.text     "metrics"
    t.text     "links"
    t.integer  "priority"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "channels", ["marketing_plan_id"], name: "index_channels_on_marketing_plan_id"

  create_table "competitors", force: :cascade do |t|
    t.integer  "research_plan_id"
    t.string   "name"
    t.string   "web_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "competitors", ["research_plan_id"], name: "index_competitors_on_research_plan_id"

  create_table "content_reports", force: :cascade do |t|
    t.integer  "report_id"
    t.string   "content_type"
    t.integer  "total_comments"
    t.integer  "total_shares"
    t.integer  "total_likes"
    t.text     "coaching_insights"
    t.integer  "total_downloads"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "credentials", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "name"
    t.string   "category"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "credentials", ["project_id"], name: "index_credentials_on_project_id"

  create_table "email_reports", force: :cascade do |t|
    t.integer  "report_id"
    t.decimal  "open_rate"
    t.integer  "subscribers"
    t.integer  "unsubscribes"
    t.integer  "emails_sent"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "email_reports", ["report_id"], name: "index_email_reports_on_report_id"

  create_table "events", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "name"
    t.date     "date"
    t.time     "time"
    t.string   "event_type"
    t.string   "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events", ["project_id"], name: "index_events_on_project_id"

  create_table "expenses", force: :cascade do |t|
    t.integer  "budget_id"
    t.string   "name"
    t.decimal  "amount"
    t.string   "expense_type"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "expenses", ["budget_id"], name: "index_expenses_on_budget_id"

  create_table "images", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_file_file_name"
    t.string   "image_file_content_type"
    t.integer  "image_file_file_size"
    t.datetime "image_file_updated_at"
  end

  create_table "intakes", force: :cascade do |t|
    t.integer  "opportunity_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "intakes", ["opportunity_id"], name: "index_intakes_on_opportunity_id"

  create_table "invoices", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "desc"
    t.date     "due_date"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "invoices", ["project_id"], name: "index_invoices_on_project_id"

  create_table "line_items", force: :cascade do |t|
    t.integer  "invoice_id"
    t.string   "name"
    t.decimal  "amount"
    t.string   "item_type"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "line_items", ["invoice_id"], name: "index_line_items_on_invoice_id"

  create_table "locations", force: :cascade do |t|
    t.integer  "media_plan_id"
    t.string   "name"
    t.string   "link"
    t.text     "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "long"
    t.string   "lat"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "locations", ["media_plan_id"], name: "index_locations_on_media_plan_id"

  create_table "marketing_plans", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "marketing_plans", ["project_id"], name: "index_marketing_plans_on_project_id"

  create_table "media_plans", force: :cascade do |t|
    t.text     "desc"
    t.string   "video_type"
    t.integer  "project_id"
    t.string   "storyboard_link"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "media_plans", ["project_id"], name: "index_media_plans_on_project_id"

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.integer  "opportunity_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "notes", ["opportunity_id"], name: "index_notes_on_opportunity_id"

  create_table "opportunities", force: :cascade do |t|
    t.string   "name"
    t.string   "twitter"
    t.string   "fb"
    t.string   "prospect_name"
    t.string   "phone"
    t.string   "email"
    t.string   "amount"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "phase"
    t.string   "engagement_level"
    t.string   "website"
    t.boolean  "video"
    t.boolean  "web"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "need"
    t.boolean  "need_confirmed"
  end

  create_table "personas", force: :cascade do |t|
    t.integer  "age"
    t.text     "problem"
    t.text     "solution"
    t.text     "narative"
    t.string   "sex"
    t.integer  "brand_story_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "personas", ["brand_story_id"], name: "index_personas_on_brand_story_id"

  create_table "phases", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "name"
    t.string   "brand"
    t.integer  "progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "phases", ["project_id"], name: "index_phases_on_project_id"

  create_table "pre_project_assessments", force: :cascade do |t|
    t.integer  "opportunity_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "pre_project_assessments", ["opportunity_id"], name: "index_pre_project_assessments_on_opportunity_id"

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "projected_end_date"
    t.date     "actual_end_date"
    t.string   "name"
    t.text     "objective"
    t.integer  "timeline"
    t.integer  "project_progress"
    t.string   "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "phase"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

  create_table "reports", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "report_type"
    t.text     "desc"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reports", ["project_id"], name: "index_reports_on_project_id"

  create_table "research_plans", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "keywords"
    t.text     "strategy"
    t.text     "user_strategy"
    t.text     "market_strategy"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "research_plans", ["project_id"], name: "index_research_plans_on_project_id"

  create_table "research_tools", force: :cascade do |t|
    t.integer  "research_plan_id"
    t.string   "name"
    t.string   "url"
    t.string   "tool_type"
    t.text     "desc"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "research_tools", ["research_plan_id"], name: "index_research_tools_on_research_plan_id"

  create_table "responsible_team_members", force: :cascade do |t|
    t.integer  "upkeep_plan_id"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "member_type"
    t.string   "responsible_for"
    t.text     "desc"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "responsible_team_members", ["upkeep_plan_id"], name: "index_responsible_team_members_on_upkeep_plan_id"

  create_table "schedules", force: :cascade do |t|
    t.integer  "upkeep_plan_id"
    t.integer  "channel_id"
    t.string   "frequency"
    t.string   "days"
    t.text     "desc"
    t.text     "goal"
    t.string   "name"
    t.string   "schedule_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "schedules", ["channel_id"], name: "index_schedules_on_channel_id"
  add_index "schedules", ["upkeep_plan_id"], name: "index_schedules_on_upkeep_plan_id"

  create_table "scripts", force: :cascade do |t|
    t.integer  "media_plan_id"
    t.string   "title"
    t.text     "treatment"
    t.text     "intro"
    t.text     "call2action"
    t.text     "objective"
    t.text     "characters"
    t.text     "script"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "scripts", ["media_plan_id"], name: "index_scripts_on_media_plan_id"

  create_table "seo_traffic_reports", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "incoming_traffic"
    t.decimal  "bounce_rate"
    t.string   "full_report_link"
    t.text     "coaching_insights"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "seo_traffic_reports", ["report_id"], name: "index_seo_traffic_reports_on_report_id"

  create_table "shotlists", force: :cascade do |t|
    t.text     "desc"
    t.integer  "media_plan_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "shotlists", ["media_plan_id"], name: "index_shotlists_on_media_plan_id"

  create_table "shots", force: :cascade do |t|
    t.integer  "shotlist_id"
    t.string   "name"
    t.text     "desc"
    t.string   "shot_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shots", ["shotlist_id"], name: "index_shots_on_shotlist_id"

  create_table "social_media_reports", force: :cascade do |t|
    t.integer  "report_id"
    t.string   "channel"
    t.integer  "shares"
    t.integer  "comments"
    t.integer  "likes"
    t.integer  "followers"
    t.integer  "friends"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "social_media_reports", ["report_id"], name: "index_social_media_reports_on_report_id"

  create_table "steps", force: :cascade do |t|
    t.integer  "tutorial_id"
    t.string   "name"
    t.text     "desc"
    t.integer  "order"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "steps", ["tutorial_id"], name: "index_steps_on_tutorial_id"

  create_table "styleguides", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "colors"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "styleguides", ["project_id"], name: "index_styleguides_on_project_id"

  create_table "subsciption_plans", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "plan_type"
    t.text     "desc"
    t.date     "start_date"
    t.date     "expiration_date"
    t.decimal  "amount"
    t.string   "term"
    t.string   "staus"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "subsciption_plans", ["project_id"], name: "index_subsciption_plans_on_project_id"

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.integer  "hours"
    t.integer  "mins"
    t.integer  "time_spent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "task_type"
    t.integer  "task_order"
    t.integer  "points"
    t.string   "status"
    t.text     "task_notes"
  end

  create_table "team_members", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "member_type"
    t.string   "fname"
    t.string   "lname"
    t.string   "position"
    t.string   "email"
    t.string   "phone"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "team_members", ["project_id"], name: "index_team_members_on_project_id"

  create_table "tutorials", force: :cascade do |t|
    t.integer  "upkeep_plan_id"
    t.string   "name"
    t.string   "plan_type"
    t.text     "desc"
    t.text     "instructions"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "tutorials", ["upkeep_plan_id"], name: "index_tutorials_on_upkeep_plan_id"

  create_table "type_faces", force: :cascade do |t|
    t.string   "type_face_type"
    t.string   "type_face_link"
    t.text     "type_face_tags"
    t.integer  "styleguides_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "type_faces", ["styleguides_id"], name: "index_type_faces_on_styleguides_id"

  create_table "upkeep_plans", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "strategy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "upkeep_plans", ["project_id"], name: "index_upkeep_plans_on_project_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin",               default: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "videos", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "video_type"
    t.string   "embed_code"
    t.string   "url"
    t.text     "desc"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "videos", ["project_id"], name: "index_videos_on_project_id"

  create_table "web_plans", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "moodboard"
    t.text     "themes"
    t.string   "chosen_theme"
    t.text     "desc"
    t.string   "inspiration_links"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "web_plans", ["project_id"], name: "index_web_plans_on_project_id"

end

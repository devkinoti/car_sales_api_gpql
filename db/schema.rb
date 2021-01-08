# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_08_132702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.string "addres_one"
    t.string "address_two"
    t.string "address_three"
    t.string "address_four"
    t.string "town_city"
    t.string "state_county_province"
    t.string "country"
    t.string "postal_zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "car_features", force: :cascade do |t|
    t.bigint "cars_for_sale_id", null: false
    t.string "car_feature_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cars_for_sale_id"], name: "index_car_features_on_cars_for_sale_id"
  end

  create_table "car_features_cars_for_sales", id: false, force: :cascade do |t|
    t.bigint "car_feature_id", null: false
    t.bigint "cars_for_sale_id", null: false
    t.index ["car_feature_id", "cars_for_sale_id"], name: "features_oncars_for_sale_idx"
  end

  create_table "car_loans", force: :cascade do |t|
    t.bigint "cars_sold_id", null: false
    t.date "repayment_start_date"
    t.date "repayment_end_date"
    t.decimal "monthly_repayments"
    t.bigint "finance_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cars_sold_id"], name: "index_car_loans_on_cars_sold_id"
    t.index ["finance_company_id"], name: "index_car_loans_on_finance_company_id"
  end

  create_table "car_manufacturers", force: :cascade do |t|
    t.string "manufacturer_short_name"
    t.string "manufacturer_full_name"
    t.text "manufacturer_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.string "model_code"
    t.string "manufacturer_code"
    t.string "model_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars_for_sales", force: :cascade do |t|
    t.bigint "car_model_id", null: false
    t.bigint "car_manufacturer_id", null: false
    t.bigint "vehicle_category_id", null: false
    t.decimal "asking_price"
    t.decimal "current_mileage"
    t.date "date_acquired"
    t.date "registration_year"
    t.text "car_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_manufacturer_id"], name: "index_cars_for_sales_on_car_manufacturer_id"
    t.index ["car_model_id"], name: "index_cars_for_sales_on_car_model_id"
    t.index ["vehicle_category_id"], name: "index_cars_for_sales_on_vehicle_category_id"
  end

  create_table "cars_solds", force: :cascade do |t|
    t.bigint "cars_for_sale_id", null: false
    t.bigint "customer_id", null: false
    t.decimal "agreed_price"
    t.date "date_sold"
    t.decimal "monthly_payment_amount"
    t.date "monthly_payment_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cars_for_sale_id"], name: "index_cars_solds_on_cars_for_sale_id"
    t.index ["customer_id"], name: "index_cars_solds_on_customer_id"
  end

  create_table "customer_payments", force: :cascade do |t|
    t.bigint "payment_status_id", null: false
    t.bigint "cars_sold_id", null: false
    t.bigint "customer_id", null: false
    t.date "customer_payment_date_due"
    t.date "customer_payment_date_made"
    t.decimal "actual_payment_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cars_sold_id"], name: "index_customer_payments_on_cars_sold_id"
    t.index ["customer_id"], name: "index_customer_payments_on_customer_id"
    t.index ["payment_status_id"], name: "index_customer_payments_on_payment_status_id"
  end

  create_table "customer_preferences", force: :cascade do |t|
    t.string "preference_description"
    t.bigint "customer_id"
    t.bigint "car_feature_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_feature_id"], name: "index_customer_preferences_on_car_feature_id"
    t.index ["customer_id"], name: "index_customer_preferences_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "email_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "finance_companies", force: :cascade do |t|
    t.string "company_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insurance_companies", force: :cascade do |t|
    t.string "company_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insurance_policies", force: :cascade do |t|
    t.bigint "cars_sold_id", null: false
    t.date "policy_start_date"
    t.date "policy_renewal_date"
    t.decimal "monthly_payment"
    t.bigint "insurance_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cars_sold_id"], name: "index_insurance_policies_on_cars_sold_id"
    t.index ["insurance_company_id"], name: "index_insurance_policies_on_insurance_company_id"
  end

  create_table "payment_statuses", force: :cascade do |t|
    t.integer "payment_status_code"
    t.text "payment_status_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicle_categories", force: :cascade do |t|
    t.string "vehicle_category_code"
    t.text "vehicle_category_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "car_features", "cars_for_sales"
  add_foreign_key "car_loans", "cars_solds"
  add_foreign_key "car_loans", "finance_companies"
  add_foreign_key "cars_for_sales", "car_manufacturers"
  add_foreign_key "cars_for_sales", "car_models"
  add_foreign_key "cars_for_sales", "vehicle_categories"
  add_foreign_key "cars_solds", "cars_for_sales"
  add_foreign_key "cars_solds", "customers"
  add_foreign_key "customer_payments", "cars_solds"
  add_foreign_key "customer_payments", "customers"
  add_foreign_key "customer_payments", "payment_statuses"
  add_foreign_key "insurance_policies", "cars_solds"
  add_foreign_key "insurance_policies", "insurance_companies"
end

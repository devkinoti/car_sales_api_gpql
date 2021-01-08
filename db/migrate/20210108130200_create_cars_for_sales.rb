class CreateCarsForSales < ActiveRecord::Migration[6.1]
  def change
    create_table :cars_for_sales do |t|
      t.references :car_model, null: false, foreign_key: true
      t.references :car_manufacturer, null: false, foreign_key: true
      t.references :vehicle_category, null: false, foreign_key: true
      t.decimal :asking_price
      t.decimal :current_mileage
      t.date :date_acquired
      t.date :registration_year
      t.text :car_description

      t.timestamps
    end
  end
end

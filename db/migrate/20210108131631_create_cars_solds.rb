class CreateCarsSolds < ActiveRecord::Migration[6.1]
  def change
    create_table :cars_solds do |t|
      t.references :cars_for_sale, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.decimal :agreed_price
      t.date :date_sold
      t.decimal :monthly_payment_amount
      t.date :monthly_payment_date

      t.timestamps
    end
  end
end

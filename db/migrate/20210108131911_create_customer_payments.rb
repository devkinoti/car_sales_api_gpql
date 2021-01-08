class CreateCustomerPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_payments do |t|
      t.references :payment_status, null: false, foreign_key: true
      t.references :cars_sold, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.date :customer_payment_date_due
      t.date :customer_payment_date_made
      t.decimal :actual_payment_amount

      t.timestamps
    end
  end
end

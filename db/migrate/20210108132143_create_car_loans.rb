class CreateCarLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :car_loans do |t|
      t.references :cars_sold, null: false, foreign_key: true
      t.date :repayment_start_date
      t.date :repayment_end_date
      t.decimal :monthly_repayments
      t.references :finance_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

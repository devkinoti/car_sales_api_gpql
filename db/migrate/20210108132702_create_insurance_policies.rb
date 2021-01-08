class CreateInsurancePolicies < ActiveRecord::Migration[6.1]
  def change
    create_table :insurance_policies do |t|
      t.references :cars_sold, null: false, foreign_key: true
      t.date :policy_start_date
      t.date :policy_renewal_date
      t.decimal :monthly_payment
      t.references :insurance_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

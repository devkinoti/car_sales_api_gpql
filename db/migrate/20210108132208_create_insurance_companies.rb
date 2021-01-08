class CreateInsuranceCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :insurance_companies do |t|
      t.string :company_name

      t.timestamps
    end
  end
end

class CreateFinanceCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :finance_companies do |t|
      t.string :company_name

      t.timestamps
    end
  end
end

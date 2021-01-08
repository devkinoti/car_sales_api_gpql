class CreatePaymentStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_statuses do |t|
      t.integer :payment_status_code
      t.text :payment_status_description

      t.timestamps
    end
  end
end

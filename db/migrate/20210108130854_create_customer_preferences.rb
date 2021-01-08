class CreateCustomerPreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_preferences do |t|
      t.string :preference_description
      t.belongs_to :customer 
      t.belongs_to :car_feature

      t.timestamps
    end
  end
end

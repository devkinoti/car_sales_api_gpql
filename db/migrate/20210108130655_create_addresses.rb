class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :addres_one
      t.string :address_two
      t.string :address_three
      t.string :address_four
      t.string :town_city
      t.string :state_county_province
      t.string :country
      t.string :postal_zip_code

      t.timestamps
    end
  end
end

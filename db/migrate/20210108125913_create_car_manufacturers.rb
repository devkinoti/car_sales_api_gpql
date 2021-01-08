class CreateCarManufacturers < ActiveRecord::Migration[6.1]
  def change
    create_table :car_manufacturers do |t|
      t.string :manufacturer_short_name
      t.string :manufacturer_full_name
      t.text :manufacturer_description

      t.timestamps
    end
  end
end

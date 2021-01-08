class CreateVehicleCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicle_categories do |t|
      t.string :vehicle_category_code
      t.text :vehicle_category_description

      t.timestamps
    end
  end
end

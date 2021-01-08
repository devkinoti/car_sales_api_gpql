class CreateCarModels < ActiveRecord::Migration[6.1]
  def change
    create_table :car_models do |t|
      t.string :model_code
      t.string :manufacturer_code
      t.string :model_name

      t.timestamps
    end
  end
end

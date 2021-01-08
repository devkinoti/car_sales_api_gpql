class CreateCarFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :car_features do |t|
      t.references :cars_for_sale, null: false, foreign_key: true
      t.string :car_feature_description

      t.timestamps
    end
  end
end

class CreateJoinTableCarFeaturesCarsForSale < ActiveRecord::Migration[6.1]
  def change
    create_join_table :car_features, :cars_for_sales,id: false do |t|
      t.index [:car_feature_id, :cars_for_sale_id], name: "features_oncars_for_sale_idx"
      # t.index [:cars_for_sale_id, :car_feature_id]
    end
  end
end

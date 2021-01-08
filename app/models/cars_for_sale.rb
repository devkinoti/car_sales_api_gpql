class CarsForSale < ApplicationRecord
  belongs_to :car_model
  belongs_to :car_manufacturer
  belongs_to :vehicle_category
  has_and_belongs_to_many :car_features
end

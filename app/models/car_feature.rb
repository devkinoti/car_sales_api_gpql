class CarFeature < ApplicationRecord
  belongs_to :cars_for_sale
  has_many :customer_preferences 
  has_many :customers, through: :customer_preferences
  has_and_belongs_to_many :cars_for_sales
end

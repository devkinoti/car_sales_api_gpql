class Customer < ApplicationRecord
    has_many :customer_preferences 
    has_many :car_features, through: :customer_preference
end

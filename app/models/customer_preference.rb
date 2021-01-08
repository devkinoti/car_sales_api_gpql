class CustomerPreference < ApplicationRecord
    belongs_to :customer 
    belongs_to :car_feature
end

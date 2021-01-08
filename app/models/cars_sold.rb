class CarsSold < ApplicationRecord
  belongs_to :cars_for_sale
  belongs_to :customer
  has_many :customer_payments 
  has_many :car_loans
  has_many :insurance_policies
end

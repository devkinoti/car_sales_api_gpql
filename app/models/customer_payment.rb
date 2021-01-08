class CustomerPayment < ApplicationRecord
  belongs_to :payment_status
  belongs_to :cars_sold
  belongs_to :customer
end

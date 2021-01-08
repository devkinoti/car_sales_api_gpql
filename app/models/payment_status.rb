class PaymentStatus < ApplicationRecord
    has_many :customer_payments
end

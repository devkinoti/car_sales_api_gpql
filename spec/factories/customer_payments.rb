FactoryBot.define do
  factory :customer_payment do
    payment_status { nil }
    cars_sold { nil }
    customer { nil }
    customer_payment_date_due { "2021-01-08" }
    customer_payment_date_made { "2021-01-08" }
    actual_payment_amount { "9.99" }
  end
end

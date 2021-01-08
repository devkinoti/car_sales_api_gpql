FactoryBot.define do
  factory :cars_sold do
    cars_for_sale { nil }
    customer { nil }
    agreed_price { "9.99" }
    date_sold { "2021-01-08" }
    monthly_payment_amount { "9.99" }
    monthly_payment_date { "2021-01-08" }
  end
end

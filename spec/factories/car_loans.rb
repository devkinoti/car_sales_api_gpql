FactoryBot.define do
  factory :car_loan do
    cars_sold { nil }
    repayment_start_date { "2021-01-08" }
    repayment_end_date { "2021-01-08" }
    monthly_repayments { "9.99" }
    finance_company { nil }
  end
end

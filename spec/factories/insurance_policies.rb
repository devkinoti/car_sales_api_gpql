FactoryBot.define do
  factory :insurance_policy do
    cars_sold { nil }
    policy_start_date { "2021-01-08" }
    policy_renewal_date { "2021-01-08" }
    monthly_payment { "9.99" }
    insurance_company { nil }
  end
end

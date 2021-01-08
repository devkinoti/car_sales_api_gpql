FactoryBot.define do
  factory :cars_for_sale do
    car_model { nil }
    car_manufacturer { nil }
    vehicle_category { nil }
    asking_price { "9.99" }
    current_mileage { "9.99" }
    date_acquired { "2021-01-08" }
    registration_year { "2021-01-08" }
    car_description { "MyText" }
  end
end

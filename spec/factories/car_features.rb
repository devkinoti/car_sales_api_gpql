FactoryBot.define do
  factory :car_feature do
    cars_for_sale { nil }
    car_feature_description { "MyString" }
  end
end

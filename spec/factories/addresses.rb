FactoryBot.define do
  factory :address do
    customer { nil }
    addres_one { "MyString" }
    address_two { "MyString" }
    address_three { "MyString" }
    address_four { "MyString" }
    town_city { "MyString" }
    state_county_province { "MyString" }
    country { "MyString" }
    postal_zip_code { "MyString" }
  end
end

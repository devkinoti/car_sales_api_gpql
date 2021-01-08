class CarLoan < ApplicationRecord
  belongs_to :cars_sold
  belongs_to :finance_company
end

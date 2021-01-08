class InsurancePolicy < ApplicationRecord
  belongs_to :cars_sold
  belongs_to :insurance_company
end

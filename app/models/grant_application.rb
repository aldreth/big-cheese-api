class GrantApplication < ApplicationRecord
  validates :amount, :description, :name, :postcode, presence: true
end

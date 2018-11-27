class Subsidy < ApplicationRecord
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :amount, presence: true

  has_many :repayments
end

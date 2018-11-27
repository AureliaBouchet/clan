class Repayment < ApplicationRecord
  validates :mail, presence: true
  validates :photo, presence: true
  validates :amount, presence: true

  belongs_to :subsidy
end

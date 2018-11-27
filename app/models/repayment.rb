class Repayment < ApplicationRecord
  validates :mail, presence: true
  validates :photo, presence: true
  validates :amount, presence: true

  belongs_to :subsidy

  mount_uploader :photo, PhotoUploader
end

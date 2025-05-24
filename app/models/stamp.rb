class Stamp < ApplicationRecord
  belongs_to :company
  has_many :user_stamps, dependent: :destroy
  has_many :users, through: :user_stamps
  validates :description, presence: true
  validates :claim_code, presence: true, uniqueness: true
end

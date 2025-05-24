class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :user_stamps, through: :users
  has_many :stamps, through: :user_stamps

  validates :name, presence: true, uniqueness: true
  validates :market, presence: true
end

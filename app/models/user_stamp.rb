class UserStamp < ApplicationRecord
  belongs_to :user
  belongs_to :stamp

  validates :count , numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

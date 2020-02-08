class UserBenefit < ApplicationRecord
  belongs_to :user
  belongs_to :benefit
end

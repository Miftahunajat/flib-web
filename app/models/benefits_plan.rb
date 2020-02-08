class BenefitsPlan < ApplicationRecord
  belongs_to :benefit
  belongs_to :plan
end

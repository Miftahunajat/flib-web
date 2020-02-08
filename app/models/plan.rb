class Plan < ApplicationRecord
  has_many :benefits_plans
  has_many :benefits, through: :benefits_plans
end

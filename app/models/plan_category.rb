class PlanCategory < ApplicationRecord
  belongs_to :plan
  belongs_to :category
end

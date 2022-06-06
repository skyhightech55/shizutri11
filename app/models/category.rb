class Category < ApplicationRecord
  has_many :plan_categories
  has_many :plans, through: :plan_categories
end

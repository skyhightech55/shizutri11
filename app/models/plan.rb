class Plan < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :plan_categories
  has_many :categories, through: :plan_categories
end

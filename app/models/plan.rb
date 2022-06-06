class Plan < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :categories, dependent: :destroy
end

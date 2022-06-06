class PlanCategory < ApplicationRecord
  belongs_to :plan
  belongs_to :category
  def self.maltilevel_category_create(plan, parent_id, children_id, grandchildren_id)
    if parent_id.present? && parent_id != '---'
      category = Category.find(parent_id)
      PlanCategory.create(plan_id: plan.id, category_id: category.id)
    end

    if children_id.present? && children_id != '---'
      category = Category.find(children_id)
      PlanCategory.create(plan_id: plan.id, category_id: category.id)
    end

    if grandchildren_id.present? && grandchildren_id != '---'
      category = Category.find(grandchildren_id)
      PlanCategory.create(plan_id: plan.id, category_id: category.id)
    end
  end
end

class RemoveCategoryIdFromPlans < ActiveRecord::Migration[6.0]
  def change
    remove_column :plans, :category_id, :integer
  end
end

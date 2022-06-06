class AddCategoryIdToPlans < ActiveRecord::Migration[6.0]
  def change
    add_column :plans, :category_id, :integer
  end
end

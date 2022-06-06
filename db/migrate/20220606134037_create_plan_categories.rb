class CreatePlanCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_categories do |t|
      t.integer :plan_id
      t.integer :category_id

      t.timestamps
    end
  end
end

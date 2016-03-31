class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.references :project, index: true, foreign_key: true
      t.string :budget_type
      t.decimal :budgeted_amount
      t.decimal :actual_amount
      t.decimal :expense_total

      t.timestamps null: false
    end
  end
end

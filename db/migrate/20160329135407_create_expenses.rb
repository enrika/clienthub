class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.references :budget, index: true, foreign_key: true
      t.string :name
      t.decimal :amount
      t.string :expense_type
      t.string :status

      t.timestamps null: false
    end
  end
end

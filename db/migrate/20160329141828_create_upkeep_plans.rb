class CreateUpkeepPlans < ActiveRecord::Migration
  def change
    create_table :upkeep_plans do |t|
      t.references :project, index: true, foreign_key: true
      t.text :strategy

      t.timestamps null: false
    end
  end
end

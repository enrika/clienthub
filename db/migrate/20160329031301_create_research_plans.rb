class CreateResearchPlans < ActiveRecord::Migration
  def change
    create_table :research_plans do |t|
      t.references :project, index: true, foreign_key: true
      t.text :keywords
      t.text :strategy
      t.text :user_strategy
      t.text :market_strategy

      t.timestamps null: false
    end
  end
end

class CreateMarketingPlans < ActiveRecord::Migration
  def change
    create_table :marketing_plans do |t|
      t.references :project, index: true, foreign_key: true
      t.text :desc

      t.timestamps null: false
    end
  end
end

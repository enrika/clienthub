class CreateSubsciptionPlans < ActiveRecord::Migration
  def change
    create_table :subsciption_plans do |t|
      t.references :project, index: true, foreign_key: true
      t.string :plan_type
      t.text :desc
      t.date :start_date
      t.date :expiration_date
      t.decimal :amount
      t.string :term
      t.string :staus

      t.timestamps null: false
    end
  end
end

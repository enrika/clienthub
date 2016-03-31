class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.references :upkeep_plan, index: true, foreign_key: true
      t.string :name
      t.string :plan_type
      t.text :desc
      t.text :instructions

      t.timestamps null: false
    end
  end
end

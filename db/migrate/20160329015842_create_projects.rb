class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :user, index: true, foreign_key: true
      t.date :start_date
      t.date :projected_end_date
      t.date :actual_end_date
      t.string :name
      t.text :objective
      t.integer :timeline
      t.integer :project_progress
      t.string :status

      t.timestamps null: false
    end
  end
end

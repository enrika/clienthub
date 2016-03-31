class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :upkeep_plan, index: true, foreign_key: true
      t.references :channel, index: true, foreign_key: true
      t.string :frequency
      t.string :days
      t.text :desc
      t.text :goal
      t.string :name
      t.string :schedule_type

      t.timestamps null: false
    end
  end
end

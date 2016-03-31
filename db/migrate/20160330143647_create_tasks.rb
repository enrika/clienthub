class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :phase, index: true, foreign_key: true
      t.string :name
      t.integer :hours
      t.integer :mins
      t.integer :time_spent

      t.timestamps null: false
    end
  end
end

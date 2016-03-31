class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :project, index: true, foreign_key: true
      t.string :name
      t.date :date
      t.time :time
      t.string :event_type
      t.string :purpose

      t.timestamps null: false
    end
  end
end

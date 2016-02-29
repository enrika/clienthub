class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :name
      t.date :due_date
      t.boolean :next
      t.boolean :completed
      t.references :opportunity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

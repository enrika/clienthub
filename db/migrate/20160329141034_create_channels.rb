class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.references :marketing_plan, index: true, foreign_key: true
      t.string :name
      t.text :strategy
      t.text :goal
      t.text :metrics
      t.text :links
      t.integer :priority

      t.timestamps null: false
    end
  end
end

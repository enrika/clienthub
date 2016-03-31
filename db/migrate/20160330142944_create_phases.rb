class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.references :project, index: true, foreign_key: true
      t.string :name
      t.string :brand
      t.integer :progress

      t.timestamps null: false
    end
  end
end

class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.references :tutorial, index: true, foreign_key: true
      t.string :name
      t.text :desc
      t.integer :order

      t.timestamps null: false
    end
  end
end

class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.references :media_plan, index: true, foreign_key: true
      t.string :title
      t.text :treatment
      t.text :intro
      t.text :call2action
      t.text :objective
      t.text :characters
      t.text :script

      t.timestamps null: false
    end
  end
end

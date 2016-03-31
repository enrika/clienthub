class CreateStyleguides < ActiveRecord::Migration
  def change
    create_table :styleguides do |t|
      t.references :project, index: true, foreign_key: true
      t.text :colors
      t.timestamps null: false
    end
  end
end

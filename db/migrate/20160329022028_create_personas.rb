class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.integer :age
      t.text :problem
      t.text :solution
      t.text :narative
      t.string :sex
      t.references :brand_story, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

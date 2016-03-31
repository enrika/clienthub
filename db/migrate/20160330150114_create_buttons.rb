class CreateButtons < ActiveRecord::Migration
  def change
    create_table :buttons do |t|
      t.references :styleguide, index: true, foreign_key: true
      t.text :html
      t.string :color
      t.text :css
      t.string :name

      t.timestamps null: false
    end
  end
end

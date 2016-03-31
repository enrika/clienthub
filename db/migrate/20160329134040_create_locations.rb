class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :media_plan, index: true, foreign_key: true
      t.string :name
      t.string :link
      t.text :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :long
      t.string :lat

      t.timestamps null: false
    end
  end
end

class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :primary_color
      t.string :secondary_color
      t.string :logo

      t.timestamps null: false
    end
  end
end

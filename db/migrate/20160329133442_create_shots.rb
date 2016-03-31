class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.references :shotlist, index: true, foreign_key: true
      t.string :name
      t.text :desc
      t.string :shot_type

      t.timestamps null: false
    end
  end
end

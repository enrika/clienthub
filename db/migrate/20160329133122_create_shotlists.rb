class CreateShotlists < ActiveRecord::Migration
  def change
    create_table :shotlists do |t|
      t.text :desc
      t.references :media_plan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

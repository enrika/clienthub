class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.references :opportunity, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

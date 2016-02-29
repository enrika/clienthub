class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :name
      t.text :description
      t.string :solution
      t.references :opportunity, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end

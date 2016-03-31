class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :invoice, index: true, foreign_key: true
      t.string :name
      t.decimal :amount
      t.string :item_type
      t.text :desc

      t.timestamps null: false
    end
  end
end

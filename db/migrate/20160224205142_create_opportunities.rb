class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.string :twitter
      t.string :fb
      t.string :prospect_name
      t.string :company
      t.string :phone
      t.string :email
      t.decimal :amount

      t.timestamps null: false
    end
  end
end

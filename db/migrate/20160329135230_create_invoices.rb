class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :project, index: true, foreign_key: true
      t.text :desc
      t.date :due_date
      t.string :status

      t.timestamps null: false
    end
  end
end

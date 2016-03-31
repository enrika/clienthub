class CreateEmailReports < ActiveRecord::Migration
  def change
    create_table :email_reports do |t|
      t.references :report, index: true, foreign_key: true
      t.decimal :open_rate
      t.integer :subscribers
      t.integer :unsubscribes
      t.integer :emails_sent

      t.timestamps null: false
    end
  end
end

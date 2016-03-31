class CreateSeoTrafficReports < ActiveRecord::Migration
  def change
    create_table :seo_traffic_reports do |t|
      t.references :report, index: true, foreign_key: true
      t.integer :incoming_traffic
      t.decimal :bounce_rate
      t.string :full_report_link
      t.text :coaching_insights
      t.text :notes

      t.timestamps null: false
    end
  end
end

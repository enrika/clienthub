class CreateContentReports < ActiveRecord::Migration
  def change
    create_table :content_reports do |t|
      t.references :report
      t.string :content_type
      t.integer :total_comments
      t.integer :total_shares
      t.integer :total_likes
      t.text :coaching_insights
      t.integer :total_downloads
      t.text :notes

      t.timestamps null: false
    end
  end
end

class CreateSocialMediaReports < ActiveRecord::Migration
  def change
    create_table :social_media_reports do |t|
      t.references :report, index: true, foreign_key: true
      t.string :channel
      t.integer :shares
      t.integer :comments
      t.integer :likes
      t.integer :followers
      t.integer :friends

      t.timestamps null: false
    end
  end
end

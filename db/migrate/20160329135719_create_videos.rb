class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :project, index: true, foreign_key: true
      t.string :video_type
      t.string :embed_code
      t.string :url
      t.text :desc
      t.string :title

      t.timestamps null: false
    end
  end
end

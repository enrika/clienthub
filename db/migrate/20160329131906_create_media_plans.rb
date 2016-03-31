class CreateMediaPlans < ActiveRecord::Migration
  def change
    create_table :media_plans do |t|
      t.text :desc
      t.string :video_type
      t.references :project, index: true, foreign_key: true
      t.string :storyboard_link

      t.timestamps null: false
    end
  end
end

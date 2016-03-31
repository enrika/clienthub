class CreateWebPlans < ActiveRecord::Migration
  def change
    create_table :web_plans do |t|
      t.references :project, index: true, foreign_key: true
      t.string :moodboard
      t.text :themes
      t.string :chosen_theme
      t.text :desc
      t.string :inspiration_links

      t.timestamps null: false
    end
  end
end

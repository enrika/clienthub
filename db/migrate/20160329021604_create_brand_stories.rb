class CreateBrandStories < ActiveRecord::Migration
  def change
    create_table :brand_stories do |t|
      t.references :project, index: true, foreign_key: true
      t.text :dna
      t.text :audience_desc
      t.text :brand_msg

      t.timestamps null: false
    end
  end
end

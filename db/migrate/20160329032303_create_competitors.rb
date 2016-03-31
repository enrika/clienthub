class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.references :research_plan, index: true, foreign_key: true
      t.string :name
      t.string :web_url

      t.timestamps null: false
    end
  end
end

class CreateResearchTools < ActiveRecord::Migration
  def change
    create_table :research_tools do |t|
      t.references :research_plan, index: true, foreign_key: true
      t.string :name
      t.string :url
      t.string :tool_type
      t.text :desc

      t.timestamps null: false
    end
  end
end

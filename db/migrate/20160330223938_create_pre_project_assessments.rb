class CreatePreProjectAssessments < ActiveRecord::Migration
  def change
    create_table :pre_project_assessments do |t|
      t.references :opportunity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

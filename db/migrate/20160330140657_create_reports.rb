class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :project, index: true, foreign_key: true
      t.string :report_type
      t.text :desc
      t.string :name

      t.timestamps null: false
    end
  end
end

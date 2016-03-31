class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.references :project, index: true, foreign_key: true
      t.string :name
      t.string :category
      t.string :username
      t.string :password
      t.string :email
      t.string :url

      t.timestamps null: false
    end
  end
end

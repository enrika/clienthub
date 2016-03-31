class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.references :project, index: true, foreign_key: true
      t.string :member_type
      t.string :fname
      t.string :lname
      t.string :position
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :rating

      t.timestamps null: false
    end
  end
end

class CreateResponsibleTeamMembers < ActiveRecord::Migration
  def change
    create_table :responsible_team_members do |t|
      t.references :upkeep_plan, index: true, foreign_key: true
      t.string :name
      t.string :phone
      t.string :email
      t.string :member_type
      t.string :responsible_for
      t.text :desc

      t.timestamps null: false
    end
  end
end

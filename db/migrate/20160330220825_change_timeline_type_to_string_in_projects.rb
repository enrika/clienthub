class ChangeTimelineTypeToStringInProjects < ActiveRecord::Migration
  def change
  	change_column :projects, :timeline, :string
  end
end

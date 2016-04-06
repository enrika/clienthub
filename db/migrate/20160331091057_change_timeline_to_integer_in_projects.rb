class ChangeTimelineToIntegerInProjects < ActiveRecord::Migration
  def change
    change_column :projects, :timeline, 'integer USING CAST(column_name AS integer)'
  end
end
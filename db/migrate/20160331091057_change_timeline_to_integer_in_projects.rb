class ChangeTimelineToIntegerInProjects < ActiveRecord::Migration
  def change
    change_column :projects, :timeline, 'integer USING CAST(timeline AS integer)'
  end
end
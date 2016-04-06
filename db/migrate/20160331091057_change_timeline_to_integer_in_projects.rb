class ChangeTimelineToIntegerInProjects < ActiveRecord::Migration
  def change
    change_column :projects, :timeline, :integer
  end
end
class RemovePhaseIdFromTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :phase_id, :integer

  end
end

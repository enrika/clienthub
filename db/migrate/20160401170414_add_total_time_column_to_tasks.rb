class AddTotalTimeColumnToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :total_hours, :integer
    add_column :tasks, :total_mins, :integer
  end
end

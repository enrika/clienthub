class AddColumnsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_type, :string
    add_column :tasks, :task_order, :integer
    add_column :tasks, :points, :integer
    add_column :tasks, :status, :string
    add_column :tasks, :task_notes, :text
  end
end

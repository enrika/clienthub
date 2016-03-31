class AddColumnPhaseToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :phase, :string
  end
end

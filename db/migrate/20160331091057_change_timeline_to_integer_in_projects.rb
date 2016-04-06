class ChangeTimelineToIntegerInProjects < ActiveRecord::Migration
  def change
    
    ALTER TABLE :projects ALTER COLUMN :timeline TYPE integer USING (timeline::integer);
  end

 
end
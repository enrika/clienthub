class AddVideotoOpportunities < ActiveRecord::Migration
  def change
  	add_column :opportunities, :video, :boolean
  end
end

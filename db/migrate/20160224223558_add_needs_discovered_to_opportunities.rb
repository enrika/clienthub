class AddNeedsDiscoveredToOpportunities < ActiveRecord::Migration
  def change
    add_column :opportunities, :need, :text
  end
end

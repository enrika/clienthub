class AddWebToOpportunities < ActiveRecord::Migration
  def change
    add_column :opportunities, :web, :boolean
  end
end

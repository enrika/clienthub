class RemoveNeedFromOpportunities < ActiveRecord::Migration
  def change
    remove_column :opportunities, :need, :text
  end
end

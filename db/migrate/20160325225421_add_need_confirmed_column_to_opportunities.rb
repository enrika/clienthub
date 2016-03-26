class AddNeedConfirmedColumnToOpportunities < ActiveRecord::Migration
  def change
    add_column :opportunities, :need_confirmed, :boolean
  end
end

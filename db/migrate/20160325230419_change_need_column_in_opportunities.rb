class ChangeNeedColumnInOpportunities < ActiveRecord::Migration
  def change
  	change_column :opportunities, :need, :text
  end
end

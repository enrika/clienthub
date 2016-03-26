class AddNeedColumnToOpportunities < ActiveRecord::Migration
  def change
    add_column :opportunities, :need, :string
  end
end

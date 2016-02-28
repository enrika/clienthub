class ChangeAmountTypeInOpportunities < ActiveRecord::Migration
  def change
  	change_column :opportunities, :amount, :string
  end
end

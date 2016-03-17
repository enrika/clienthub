class RemoveCompanyFromOpportunities < ActiveRecord::Migration
  def change
    remove_column :opportunities, :company, :string
  end
end

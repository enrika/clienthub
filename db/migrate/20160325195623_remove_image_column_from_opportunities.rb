class RemoveImageColumnFromOpportunities < ActiveRecord::Migration
  def change
  	remove_column :opportunities, :image, :string
  end
end

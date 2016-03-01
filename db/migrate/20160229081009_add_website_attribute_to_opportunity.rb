class AddWebsiteAttributeToOpportunity < ActiveRecord::Migration
  def change
    add_column :opportunities, :website, :string
  end
end

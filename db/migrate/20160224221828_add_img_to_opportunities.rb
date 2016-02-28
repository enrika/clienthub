class AddImgToOpportunities < ActiveRecord::Migration
  def change
    add_column :opportunities, :image, :string
  end
end

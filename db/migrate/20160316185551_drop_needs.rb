class DropNeeds < ActiveRecord::Migration
  def change
  	drop_table :needs
  end
end

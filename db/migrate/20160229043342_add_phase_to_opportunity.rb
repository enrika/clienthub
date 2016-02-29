class AddPhaseToOpportunity < ActiveRecord::Migration
  def change
    add_column :opportunities, :phase, :string
  end
end

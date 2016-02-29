class AddEngagementLevelToOpportunity < ActiveRecord::Migration
  def change
    add_column :opportunities, :engagement_level, :string
  end
end

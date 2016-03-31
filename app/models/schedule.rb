class Schedule < ActiveRecord::Base
  belongs_to :upkeep_plan
  belongs_to :channel
end

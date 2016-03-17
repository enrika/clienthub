class Action < ActiveRecord::Base
  belongs_to :opportunity

  validates :name, presence: true
end

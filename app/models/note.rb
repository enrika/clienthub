class Note < ActiveRecord::Base
  belongs_to :opportunity


validates :title, :description, presence: true

end

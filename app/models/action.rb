class Action < ActiveRecord::Base
  belongs_to :opportunity

  validates :name, presence: true

ACTION_TYPE_OPTIONS = [

'research',
'gift',
'email',
'call',
'1on1 engagement',
]

validates :action_type, inclusion:  { in: ACTION_TYPE_OPTIONS }


end

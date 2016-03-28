class Action < ActiveRecord::Base
  belongs_to :opportunity

  validates :name, presence: true

ACTION_TYPE_OPTIONS = [

'research',
'gift',
'email',
'call',
'engagement',
]

validates :action_type, inclusion:  { in: ACTION_TYPE_OPTIONS }

scope :upcoming, -> { where('due_date >= ?', Time.now).order(:due_date) }

scope :next, ->() { where('next = ?', true).order(:due_date).limit(1) }

	 def self.set_next_action(opp)

	 	@next_one = opp.actions.order(:due_date).last
	 	@next_one.update(next: '1')
	 	
	 end


end

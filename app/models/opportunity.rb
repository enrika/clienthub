class Opportunity < ActiveRecord::Base
has_many :notes, dependent: :destroy #when deleted also delete the child stuff thats connected
has_many :actions, dependent: :destroy #when deleted also delete the child stuff thats connected

accepts_nested_attributes_for :notes, reject_if: proc { |attributes| attributes['title'].blank?}, allow_destroy: true
accepts_nested_attributes_for :actions 

validates :name, presence: true
validates_associated :notes, :actions, presence: true



AMOUNT_OPTIONS = [

'Select Amount',
'0',
'1500',
'4500',
'5k+'

]

ENGAGE_LEVELS = [

'cold',
'warm',
'hot'

]

PHASE_OPTIONS = [

'Research',
'Engagement',
'Need',
'Intake',
'Proposal'

]

validates :amount, 
			inclusion: { in: AMOUNT_OPTIONS } #inclusion needs an array to for values

validates :engagement_level, 
		  inclusion: {in: ENGAGE_LEVELS }

validates :phase, 
		  inclusion: {in: PHASE_OPTIONS }

end

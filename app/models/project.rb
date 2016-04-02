class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, dependent: :destroy
  
  

STATUS_OPTIONS = [

'waiting',
'active',
'completed'


]

TIMELINE_OPTIONS = [

7,
14,
21,
60


]


  PHASE_OPTIONS = [

  	'Pre-Project',
  	'Clarify',
  	'Strategize',
  	'Build',
  	'Cultivate'
  ]


  validates :phase,
  			inclusion: {in: PHASE_OPTIONS}


validates :status, 
			inclusion: { in: STATUS_OPTIONS}



validates :timeline, 
			inclusion: { in: TIMELINE_OPTIONS}





end

class Opportunity < ActiveRecord::Base
has_many :notes, dependent: :destroy #when deleted also delete the child stuff that connected



validates :name, presence: true

AMOUNT_OPTIONS = [

'Select Amount',
'1500',
'4500',
'5k+'

]

validates :amount, 
			inclusion: { in: AMOUNT_OPTIONS } #inclusion needs an array to for values
end

class Task < ActiveRecord::Base
  belongs_to :project
  validates :name, presence: true


  STATUS_OPTIONS = [

 'Not Yet Started',
 'In Progress',
 'Waiting on Client',
 'Waiting for Misc'

  ]




validates :status, 
inclusion: { in: STATUS_OPTIONS }


def self.get_sorted_tasks(tasks, title)

	tasks.where("task_type = ?", title )
	
	
	 	
	 end




end


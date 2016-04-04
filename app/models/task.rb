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


	scope :completed, -> { where(completed: true) }



	def self.get_project_progress(tasks)
		
			unless tasks.empty?

			
				# get done points 
					if completed.empty?
							done_points = 0
						else
							done_points = tasks.completed.sum(:points).to_f	
					end

				#get total points
					
					 total_points = tasks.sum(:points).to_f

					 # math for percentage goesaah heraah
				progress = (done_points / total_points) * 100

			else
			progress = 0	 
			end
	end


















end


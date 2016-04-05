class TasksController < ApplicationController
	before_action :require_signin
before_action :require_admin, except: [:show]

	

	def index #show an index of all in the db that belong to project
	@project = Project.find(params[:project_id])
	@tasks = @project.tasks
	@phase_titles = Project::PHASE_OPTIONS 
	@completed = @project.tasks(:completed => true)
	@progress = @tasks.get_project_progress(@tasks) 

	end

	
	def show #details view
		@project = Project.find(params[:project_id])
	    @tasks = @project.tasks.find(params[:id])

	end

	
	def edit
		@project = Project.find(params[:project_id])
	    @task = @project.tasks.find(params[:id])
	end

	
	def update
		@project = Project.find(params[:project_id])
	    @task = @project.tasks.find(params[:id])
		@task.update(task_params)
		redirect_to project_task_path
	end

	
	def new
		@project = Project.find(params[:project_id])
		@task = @project.tasks.new
	end

	
	def create
		@project = Project.find(params[:project_id])
		@task = @project.tasks.new(task_params)
		@task.save

		if @task.save
		redirect_to project_tasks_path(@project), notice: "task was successfully created"
		else
			render :new
		end
	end

	def destroy
		@project = Project.find(params[:project_id])
	    @task = @project.tasks.find(params[:id])
		@task.destroy

		redirect_to project_tasks_path(@project)
	end

	private

		def task_params 
			params.require(:task).
			permit(:name, :hours, :mins, :time_spent, :task_notes, :task_type, :task_order, :points, :status, :task_tasks, :due_date, :completed)   
					
		end

	


		


end

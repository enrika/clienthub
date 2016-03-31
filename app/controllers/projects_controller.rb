class ProjectsController < ApplicationController
before_action :require_signin
before_action :require_admin, except: [:show]



	def index #show an index of all in the db
		@projects = Project.order(:projected_end_date)

	end

	
	def show #details view
		@project = Project.find(params[:id])
		
	end

	
	def edit
		@project = Project.find(params[:id])
		
	end

	
	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			set_end_date(@project)
			redirect_to @project, notice: ' project has been successfully updated.'
		else
			render :edit

		end
	end

	
	def new
		@project = Project.new

	end

	
	def create
		@project = Project.new(project_params)
		@project.save

		if @project.save
		create_default_tasks()	
		set_end_date(@project)
		redirect_to @project, notice: "project was successfully created"
		else
			render :new
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to projects_url, alert: "project has been deleted"
	end



	private

		def project_params 
			params.require(:project).
			permit(:start_date, :projected_end_date, :actual_end_date, :name, :objective, :timeline, :status)   
					
		end

	

		def set_end_date(project)
		@days = project.timeline

		@newdate = project.start_date + @days.days
		project.update(projected_end_date: @newdate)

		
	end






end

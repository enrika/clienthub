class OpportunitiesController < ApplicationController
	
	before_action :require_signin
	before_action :require_admin

	def index #show an index of all in the db
	@opps = Opportunity.all

	end

	
	def show #details view
		@opp = Opportunity.find(params[:id])
		@notes = @opp.notes.limit(3)
		@actions = @opp.actions
		@upcoming = @actions.upcoming
		@next = @actions.next
	
		
	end

	
	def edit
		@opp = Opportunity.find(params[:id])
		@opp.notes.build
		@notes = @opp.notes
	end

	
	def update
		@opp = Opportunity.find(params[:id])
		if @opp.update(opp_params)
			redirect_to @opp, notice: ' Opportunity has been successfully updated.'
		else
			render :edit

		end
	end

	
	def new
		@opp = Opportunity.new
		@opp.notes.build
		@notes = @opp.notes

	end

	
	def create
		@opp = Opportunity.new(opp_params)
		@opp.save

		if @opp.save
		redirect_to @opp, notice: "Opportunity was successfully created"
		else
			render :new
		end
	end

	def destroy
		@opp = Opportunity.find(params[:id])
		@opp.destroy

		redirect_to opportunities_url, alert: "Opportunity has been deleted"
	end



	private

		def opp_params 
			params.require(:opportunity).
			permit(:name, :twitter, :fb, :prospect_name, :web, :video, :phase, :engagement_level, :phone, :email, :amount, :image, :website,  
					notes_attributes:[:id, :title, :description, :date, :_destroy])
		end

	

end

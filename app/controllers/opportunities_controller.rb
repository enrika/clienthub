class OpportunitiesController < ApplicationController

	def index #show an index of all in the db
	@opps = Opportunity.all
	end

	
	def show #details view
		@opp = Opportunity.find(params[:id])
		@notes = @opp.notes.limit(3)
	
		
	end

	
	def edit
		@opp = Opportunity.find(params[:id])
		@opp.notes.build
	end

	
	def update
		@opp = Opportunity.find(params[:id])
		@opp.update(opp_params)
		redirect_to @opp
	end

	
	def new
		@opp = Opportunity.new
		@opp.notes.build

	end

	
	def create
		@opp = Opportunity.new(opp_params)
		@opp.save

		if @opp.save
		redirect_to @opp, notice: "Opportunity was successfully created"
		else
			render "new"
		end
	end

	def destroy
		@opp = Opportunity.find(params[:id])
		@opp.destroy

		redirect_to opportunities_url
	end



	private

		def opp_params 
			params.require(:opportunity).
			permit(:name, :twitter, :fb, :prospect_name, :phase, :engagement_level, :company, :phone, :email, :amount, :image, :website,  
					notes_attributes:[:id, :title, :description, :date, :_destroy])
		end

	

end

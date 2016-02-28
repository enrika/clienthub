class OpportunitiesController < ApplicationController

	def index #show an index of all in the db
	@opps = Opportunity.all
	end

	
	def show #details view
		@opp = Opportunity.find(params[:id])
	end

	
	def edit
		@opp = Opportunity.find(params[:id])
	end

	
	def update
		@opp = Opportunity.find(params[:id])
		@opp.update(opp_params)
		redirect_to @opp
	end

	
	def new
		@opp = Opportunity.new
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
			permit(:name, :twitter, :fb, :prospect_name, :company, :phone, :email, :amount, :image)
		end

	

end

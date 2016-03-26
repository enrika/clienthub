class ActionsController < ApplicationController

before_action :require_signin
before_action :require_admin

			def index #show an index of all in the db that belong to opp
			@opp = Opportunity.find(params[:opportunity_id])
			@actions = @opp.actions

			end

			
			def show #details view
				@opp = Opportunity.find(params[:opportunity_id])
			    @actionstuff = @opp.actions.find(params[:id])
			end

			
			def edit
				@opp = Opportunity.find(params[:opportunity_id])
			    @actionstuff = @opp.actions.find(params[:id])
			end

			
			def update
				@opp = Opportunity.find(params[:opportunity_id])
			    @actionstuff = @opp.actions.find(params[:id])
				@actionstuff.update(action_params)
				redirect_to opportunity_action_path
			end

			
			def new
				@opp = Opportunity.find(params[:opportunity_id])
				@actionstuff = @opp.actions.new
			end

			
			def create
				@opp = Opportunity.find(params[:opportunity_id])
				@actionstuff = @opp.actions.new(action_params)
				@actionstuff.save

				if @actionstuff.save
				redirect_to opportunity_actions_path(@opp), notice: "action was successfully created"
				else
					render :new
				end
			end

			def destroy
				@opp = Opportunity.find(params[:opportunity_id])
			    @actionstuff = @opp.actions.find(params[:id])
				@actionstuff.destroy

				redirect_to opportunity_actions_path(@opp)
			end

			private

					def action_params 
						params.require(:foo).permit(:name, :action_type, :due_date, :next, :completed)
					end

	


end

class NotesController < ApplicationController

# before_action :require_signin
# before_action :require_admin

def index #show an index of all in the db that belong to opp
	@opp = Opportunity.find(params[:opportunity_id])
	@notes = @opp.notes

	end

	
	def show #details view
		@opp = Opportunity.find(params[:opportunity_id])
	    @note = @opp.notes.find(params[:id])
	end

	
	def edit
		@opp = Opportunity.find(params[:opportunity_id])
	    @note = @opp.notes.find(params[:id])
	end

	
	def update
		@opp = Opportunity.find(params[:opportunity_id])
	    @note = @opp.notes.find(params[:id])
		@note.update(note_params)
		redirect_to opportunity_note_path
	end

	
	def new
		@opp = Opportunity.find(params[:opportunity_id])
		@note = @opp.notes.new
	end

	
	def create
		@opp = Opportunity.find(params[:opportunity_id])
		@note = @opp.notes.new(note_params)
		@note.save

		if @note.save
		redirect_to opportunity_notes_path(@opp), notice: "Note was successfully created"
		else
			render :new
		end
	end

	def destroy
		@opp = Opportunity.find(params[:opportunity_id])
	    @note = @opp.notes.find(params[:id])
		@note.destroy

		redirect_to opportunity_notes_path(@opp)
	end

	private

			def note_params 
				params.require(:note).
				permit(:title, :description, :date)
			end

	

end


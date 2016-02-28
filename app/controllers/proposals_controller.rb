class ProposalsController < ApplicationController
	def index
		@proposals =["proposal 1", "proposal 2", "proposal 3"]
		
	end
end

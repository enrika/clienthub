class ProposalsController < ApplicationController
	
	# before_action :require_signin
	# before_action :require_admin

	def index
		@proposals =["proposal 1", "proposal 2", "proposal 3"]
		
	end
end

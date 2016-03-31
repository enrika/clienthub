module ProjectsHelper
def get_days_left(project)
	end_date = project.projected_end_date
	
	if end_date.future?
		time_ago_in_words(end_date) + " left"
	
	else 
		time_ago_in_words(end_date) +  " Past Due!"
	end

end
	
	
end

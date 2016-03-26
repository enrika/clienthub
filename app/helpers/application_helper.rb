module ApplicationHelper

	def add_new_button
		controllername = controller.controller_name

#had to link to the actual controller since I have alot of nested resources, previously 
#tried linking to controller_path but it failed when it got to a nested route... so the below link to is the only solution that worked no matter what controller 
#I was on (nested or not)

		 link_to(:controller => controllername, :action => :new )  do
  			content_tag(:div, "+", class: "addbtn")
			end

	end


	 def hyperlink(text)
    	return text.gsub(/((http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?)/, '<a target="blank" href=\'\1\'>\1</a>').html_safe
  	end



end

class SessionsController < ApplicationController
	layout "login"
	
	def new
		render :layout=>'login'		
	end

	def create
		if user = User.authenticate(params[:email], params[:password])
		 	session[:user_id] = user.id
		 	flash[:notice] = "Welcome back, #{user.name}!"
		 	redirect_to(session[:intended_url] || user)
		 	session[:intended_url] = nil
		 else
		 	flash.now[:alert] = "Login info is incorrect"
		 	render :new
		 end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "You have successfully Signed out", class: 'alert'
	end
		
	

end

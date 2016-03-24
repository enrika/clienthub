class UsersController < ApplicationController

# before_action :require_signin
# before_action :require_correct_user, only: [:edit, :update, :destroy]


	def index
	@users = User.all 	
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		if @user.update(user_params)
			redirect_to @user, notice: 'User Account has been successfully updated'
		else
			render :edit
		end
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
		session[:user_id] = @user.id

		if @user.save
			redirect_to @user, notice: "User was successfully created"
		else
			render :new
		end
	end

	def destroy
		@user.destroy
		session[:user_id] = nil
		redirect_to root_url, alert: "User has been deleted"
	end
private


	def user_params
		params.require(:user).permit(:admin, :name, :email, :password, :password_confirmation)
	end

end














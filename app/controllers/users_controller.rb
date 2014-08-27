class UsersController < ApplicationController
	  before_filter :authenticate_user!

	def index
		@users = User.all
	end
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path, notice: "Thank you for signing up!"
		else
			render "new"
		end
	end

	def show
		@scarves = Scarves.all 
		@user = User.find_by_id(params[:id])
	end

	def destroy
		@user = User.find params[:id]
		@user.destroy
		flash[:notice] = "User successfully deleted."
		redirect_to root_path
	end

	private
	
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
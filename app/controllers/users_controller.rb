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
			redirect_to root_url, notice: "Thank you for signing up!"
		else
			render "new"
		end
	end

	def show
		@user = current_user
	end

	private
	
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
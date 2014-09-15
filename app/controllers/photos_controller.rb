class PhotosController < ApplicationController
	  before_filter :authenticate_user!

	def index
		@photos = Photo.all
	end
	
	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)
		if @photo.save
			redirect_to photo_path, notice: "Thank you for signing up!"
		else
			render "new"
		end
	end

	def show
		@photo = Photo.find_by_id(params[:id])
	end

	def destroy
		@photo = Photo.find params[:id]
		@photo.destroy
		flash[:notice] = "photo successfully deleted."
		redirect_to root_path
	end

	private
	
	def photo_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
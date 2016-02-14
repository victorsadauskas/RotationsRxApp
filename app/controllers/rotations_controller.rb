class RotationsController < ApplicationController
	before_action :require_signin, only: [:show]
	before_action :require_admin, except: [:index, :show]

		def index
			@rotations = Rotation.all
		end

		def show
			@rotation = Rotation.find(params[:id])

		end

		def edit
			@rotation = Rotation.find(params[:id])
		end
	
		def update
			@rotation = Rotation.find(params[:id])
			@rotation.update(rotation_params)
			redirect_to @rotation
		end

		def new
			@rotation = Rotation.new

		end

		def create
			@rotation = Rotation.create(rotation_params)
			redirect_to rotations_path
		end

		def destroy
			@rotation = Rotation.find(params[:id])
			@rotation.destroy
			redirect_to rotations_path
			
		end
end


private

def	rotation_params 
	params[:rotation].permit(:name, :duration, :hours, :location)
end
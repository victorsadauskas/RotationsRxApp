class M4rotationsController < ApplicationController
	before_action :require_signin, only: [:show]
	before_action :require_admin, except: [:index, :show]

	def index
		@m4rotations = M4rotation.all 

	end

	def show
		@m4rotation = M4rotation.find(params[:id])
	end

	def new
		@m4rotation = M4rotation.new
	end

	def create
		@m4rotation = M4rotation.create(m4rotation_params)
		redirect_to m4rotations_path	
	end

	def edit

		@m4rotation = M4rotation.find(params[:id])
		
	end

	def update
		@m4rotation = M4rotation.find(params[:id])
		@m4rotation.update(m4rotation_params)
		redirect_to m4rotation_path(@m4rotation)
	end

	def destroy
		@m4rotation = M4rotation.find(params[:id])
		@m4rotation.destroy 
		redirect_to m4rotations_path
	end

end

private

def	m4rotation_params 
	params[:m4rotation].permit(:name, :duration, :hours, :location)
end

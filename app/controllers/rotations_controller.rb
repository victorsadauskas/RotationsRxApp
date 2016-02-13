class RotationsController < ApplicationController


		def index
			@rotations = Rotation.all
		end

		def show
			@rotation = Rotation.find(params[:id])

		end
	


end

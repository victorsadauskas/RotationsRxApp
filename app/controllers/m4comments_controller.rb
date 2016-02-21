class M4commentsController < ApplicationController
	before_action :require_signin
	before_action :require_admin, only: [:destroy]

	def index
		@m4rotation = M4rotation.find(params[:m4rotation_id])
		@m4comments = @m4rotation.m4comments
	end

	def show
		@m4comment = M4comment.find(params[:id])
		@m4rotation = M4rotation.find(params[:m4rotation_id])
	end

	def new
		@m4rotation = M4rotation.find(params[:m4rotation_id])
		@m4comment = @m4rotation.m4comments.new
	end

	def create
		@m4rotation = M4rotation.find(params[:m4rotation_id])
		@m4comment = @m4rotation.m4comments.new(m4comment_params)
			if @m4comment.save
				redirect_to m4rotation_m4comments_path(@m4rotation),
						notice: "Thanks for your comment!"
			else
				render :new
			end
	end

	def destroy
		@m4comment = M4comment.find(params[:id])
		@m4comment.destroy
		redirect_to m4rotation_m4comments_path 
		
	end
end


private

	def m4comment_params
		params.require(:m4comment).permit(:name, :body, :created_at, :rating)
		
	end
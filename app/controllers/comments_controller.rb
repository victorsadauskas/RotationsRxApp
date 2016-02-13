class CommentsController < ApplicationController
	before_action :require_signin
	before_action :require_admin, only: [:destroy]



	def index
		@rotation = Rotation.find(params[:rotation_id])
		@comments = @rotation.comments
	end

	def new
		@rotation = Rotation.find(params[:rotation_id])
		@comment = @rotation.comments.new
	end

	def create
		@rotation = Rotation.find(params[:rotation_id])
		@comment = @rotation.comments.new(comment_params)
		if @comment.save
			redirect_to rotation_comments_path(@rotation),
					notice: "Thanks for your comment!"
		else
			render :new
		end
	end

	def show
		@comment = Comment.find(params[:id])

		@rotation = Rotation.find(params[:rotation_id])
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to rotation_comments_path
	end







	private

	def comment_params
		params.require(:comment).permit(:name, :body, :created_at, :rating)
	end


end

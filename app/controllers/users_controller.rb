class UsersController < ApplicationController

	before_action :require_signin, except: [:new, :create]
	before_action :require_admin, only: [:destroy]

		def index
			@users = User.all	
		end

		def new
			@user = User.new	
		end

		def create
			@user = User.new(user_params)
			if @user.save
				session[:user_id] = @user.id
				redirect_to(session[:intended_url] || rotations_path, notice: "Welcome, #{@user.name}. Thanks for signing up!")
				session[:intended_url] = nil
			else
				render :new
			end
		end

		def destroy
			@user = User.find(params[:id])
			@user.destroy
			redirect_to users_path
		end






	private

	def user_params
		params.require(:user).
			permit(:name, :email, :password, :password_confirmation)
	end
end

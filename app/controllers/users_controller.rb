class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit]

	def show
		@num_of_current_user_prototypes = @user.prototypes.count || 0
		@current_user_prototypes        = @user.prototypes.paginate(page: params[:page])
	end

	def edit
		
	end

	private
	def set_user
		@user = User.find(params[:id])
	end
end

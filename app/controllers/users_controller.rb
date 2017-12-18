class UsersController < ApplicationController
	def show
	  @user = User.find(params[:id])
	end
	def index
	    @users = User.order('created_at DESC').all
  	end
end

class ReviewsController < ApplicationController
	def create
		@club = Club.find(params[:club_id])
		@user_id = current_user.id
		@review = @club.reviews.create(:body => params[:body] ,:user_id => current_user.id)
		redirect_to club_path(@club)
	end
end
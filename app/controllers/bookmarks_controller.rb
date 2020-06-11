class BookmarksController < ApplicationController

	before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user, only: :destroy
	before_action :find_review, only: :create

	def index
		@bookmarks = Bookmark.all
	end

	def create
		@bookmark = current_user.bookmarks.build(bookmark_params)
		if	@bookmark.save
			flash[:success] = "Bookmark saved!"
			redirect_to bookmarks_path
		end
	end



	def destroy
		@bookmark = Bookmark.find(params[:id])
		@bookmark.destroy
		flash[:success] = "Bookmark deleted!"
		redirect_to request.referrer || root_url
	end

	private

	def bookmark_params
		params.require(:bookmark).permit(:review_id)
	end

	def correct_user
		@bookmark = current_user.bookmarks.find_by(id: params[:id])
		redirect_to root_url if @bookmark.nil?
	end

	def find_review
		@review = Review.find_by id: bookmark_params[:review_id]
	end

end

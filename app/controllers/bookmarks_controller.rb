class BookmarksController < ApplicationController

	def index
		@bookmarks = Bookmark.all
	end

	def create
		@bookmark = Bookmark.new(bookmark_params)
		@bookmark.user_id = 1
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

end

class Admin::ReviewsController < Admin::BaseController

	before_action :logged_in_user, only: [:create, :destroy, :edit]
	before_action :correct_user, only: :destroy
	before_action :find_topic, only: :create

	
	def index
		@reviews = Review.order("created_at DESC")
  	end

	def new
		@review  = Review.new
		@topics  = Topic.all
	end

	def create
		@review = current_user.reviews.build(review_params)
		if @review.save
			flash[:success] = "Review created!"
			redirect_to @review
		else
			render :new
		end
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		flash[:success] = "Review Deleted!"
		redirect_to @review
	end

	def update
		@review = Review.find(params[:id])
		if @review.update(review_params)
			flash[:success] = "Review updated"
			redirect_to @review
		else
			rennder :edit
		end
	end

	def show
		@bookmark = Bookmark.new
		@review = Review.find(params[:id])
		@comments = Comment.new
		@comment  = @review.comments.build
		@hashtags = @review.hashtags
		# unless @review.appended
		# 	redirect_to root_path
		# end
	end

	def bookmark
		@review = Review.find(params[:id])
		@reviews = @review.bookmark
		render :show
	end


	def edit
		@review = Review.find(params[:id])
		@topics = Topic.all
	end

	private

	def review_params
		params.require(:review).permit(:content, :title, :topic_id, hashtag_ids:[])
	end

	def find_topic
		@topic = Topic.find_by id: review_params[:topic_id] 
	end

	def correct_user
		@review = current_user.reviews.find_by(id: params[:id])
		redirect_to root_url if @review.nil?
	end
end

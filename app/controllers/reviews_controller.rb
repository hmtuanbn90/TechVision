class ReviewsController < ApplicationController

	before_action :find_topic, only: :create


	def index
		@reviews = Review.order("created_at DESC")
  	end

	def new
		@review  = Review.new
		@topics  = Topic.all
	end

	def create
		@review           = Review.new(review_params)
		@review.user_id   = 1
		if @review.save
			flash[:success] = "Review created!"
			redirect_to @review
		else
			@topics = Topic.all
			render :new
		end
	end

	def destroy
		@review 	      = Review.find(params[:id])
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
			render :edit
		end
	end

	def show
		@bookmark  = Bookmark.new
		@review    = Review.find(params[:id])
		@comments  = Comment.new
		@comment   = @review.comments.build
		@hashtags  = @review.hashtags
		@reviewRelate = []
		if !@hashtags.nil?
			@hashtags.each do |hashtag|

				@reviewRelate << hashtag.reviews
			end
			@reviewFilter = @reviewRelate.uniq - [@review]
		end
		unless @review.appended
			redirect_to root_path
		end
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
end

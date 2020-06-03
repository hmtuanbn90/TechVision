class ReviewsController < ApplicationController

	
	def index
    	@reviews = Review.order("created_at DESC")
    	
  	end

	def new
		@review = Review.new
		@topic = Topic.all
	end

	def create
		@review = Review.new(review_params)
		@review.user_id = 1
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
		@review = Review.find(params[:id])
		if !@review.appended
			redirect_to root_url
		end
	end

	def edit
		@review = Review.find(params[:id])
	end

	private

	def review_params
		params.require(:review).permit(:content, :title)
	end
end

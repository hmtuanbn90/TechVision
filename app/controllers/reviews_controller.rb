class ReviewsController < ApplicationController
	
	
	def new
		@review = Review.new
	end

	def create
		@review = Review.build(review_params)
		if @review.save
			flash[:success] = "Review created!"
			redirect_to @review
		else
			render 'new'
		end
	end

	def destroy
	end

	def update
		@review = Review.find(params(:id))
		if @review.update(review_params)
			flash[:success] = "Review updated"
			redirect_to @review
		else
			rennder 'edit'	
		end
	end

	def show
		@review = Review.find(params[:id])
	end

	def edit
		@review = Review.find(params[:id])
	end

	private

	def review_params
		params.require(:review).permit(:content, :images)
	end
end

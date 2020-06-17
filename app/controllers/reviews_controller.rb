class ReviewsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy, :edit]
	before_action :correct_user, only: :destroy

  def index
    @reviews = Review.all_review
  end

  def show
      @bookmark = Bookmark.new
      @review = Review.find params[:id]
      @comments = @review.comments.paginate page: params[:page]
      @comment = @review.comments.build
      @hashtags = @review.hashtags
      @reviewFilter = Review.reviewHashtag params[:id]
    unless @review.appended
      redirect_to root_path
    end
  end

  def new
    @review = Review.new
    @topics = Topic.all
  end

  def create
    @review = current_user.reviews.build(review_params)
    @review.image.attach params[:review][:image]
    if @review.save
      flash[:success] = t("index.Review created!")
      redirect_to @review
    else
      @topics = Topic.all
      render :new
    end
  end

  def edit
    @review = Review.find params[:id]
    @topics = Topic.all
  end

  def update
    @review = Review.find params[:id]
    if @review.update review_params
      flash[:success] = t("index.Review updated")
      redirect_to @review
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    flash[:success] = t("index.Review Deleted!")
    redirect_to @review
  end

  private
  def review_params
    params.require(:review).permit :content, :image, :title, :topic_id, hashtag_ids:[]
  end

  def correct_user
    @review = current_user.reviews.find params[:id]
    redirect_to root_url if @review.nil?
  end
end

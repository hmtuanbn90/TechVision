class RevisesController < ApplicationControlle
  def index
    @reviews = Review.all_appended_false
  end

  def show
    @review = Review.find params[:id]
    @comments = Comment.new
    @bookmark = Bookmark.new
    @hashtags = @review.hashtags
    @comment = @review.comments.build
    render "reviews/show"
  end

  def edit
    if
      @review = Review.find(params[:id])
      @review.update_attributes appended: true
      flash[:success] = "Request is accepted"
      redirect_to revises_path
    else
      flas[:success] = "Somethings went wrong"
      redirect_to revises_path
    end
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    flash[:success] = "Review Deleted!"
    redirect_to revises_path
  end

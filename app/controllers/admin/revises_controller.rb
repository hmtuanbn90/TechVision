class Admin::RevisesController < Admin::BaseController
  def index
    @reviews = Review.all_appended_false
  end

  def show
    @review = Review.find params[:id]
    @comments = Comment.new
    @bookmark = Bookmark.new
    @hashtags = @review.hashtags
    @comment = @review.comments.build
    render "admin/reviews/show"
  end

  def edit
    @review = Review.find(params[:id])
    @review.update_attributes appended: true
    flash[:success] = t("index.Request is accepted")
    redirect_to admin_revises_path
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    flash[:success] = t("index.Review Deleted!")
    respond_to do |format|
      format.html
      format.js
      format.json {render json: {result: "OK"} }
    end
  end
end

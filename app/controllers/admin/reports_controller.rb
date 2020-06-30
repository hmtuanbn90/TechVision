class Admin::ReportsController < ApplicationController
  before_action :logged_in_user, only: [:create]

  def index
  	@reports = Report.all
  end

  def show
    @review = Review.find params[:id]
    @comments = Comment.new
    @bookmark = Bookmark.new
    @hashtags = @review.hashtags
    @comment = @review.comments.build
    render "admin/reviews/show"
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    flash[:success] = t("index.Review Deleted!")
    redirect_to admin_reports_path
  end
end
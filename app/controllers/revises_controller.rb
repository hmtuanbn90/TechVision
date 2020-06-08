class RevisesController < ApplicationController

  def index
    @reviews = Review.all.where(appended: false)
  end

  def edit
    @review = Review.find(params[:id])
    @review.update_attributes appended: true
    flash[:success] = "Request is accepted"
    redirect_to revises_path
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:success] = "Review Deleted!"
    redirect_to revises_path
  end

  def show
    @review = Review.find(params[:id])
    @comments = Comment.new
    @comment = @review.comments.build

    end
end

class LikesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def new
    @like = Like.new
  end

  def index
    @likes = Like.all
  end

  def create
    @review = Review.find params[:review_id]
    @like = current_user.likes.build review_id: @review.id
    @like.save
    respond_to do |format|
      format.html { redirect_to @review }
      format.js
    end
  end

  def destroy
    @review = Review.find params[:review_id]
    @like = Like.find params[:id]
    @like.destroy
    respond_to do |format|
      format.html { redirect_to @review }
      format.js
    end
  end

  private
  def correct_user
    @like = current_user.likes.find_by id: params[:id]
    redirect_to root_url if @like.nil?
  end
end


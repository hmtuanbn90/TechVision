class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :edit]

  def create
    @comment = current_user.comments.build comment_params
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.review, notice: t("index.Created")}
        format.js
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.js
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @comment = Comment.find params[:id]
    @review = Review.find params[:review_id]
  end

  def update
    @comment = Comment.find params[:id]
    if @comment.update comment_params
      flash[:success] = t("index.Comment updated")
      redirect_to review_path(params[:review_id])
    else
      @comment = Comment.find params[:id]
      @review = Review.find(params[:review_id])
      render :edit
    end
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    redirect_to @review if @comment.nil?
    flash[:success] = t("index.Comment deleted")
    redirect_to review_path(params[:review_id])
  end

  private
  def comment_params
    params.require(:comment).permit :content, :review_id, :user_id
  end
end

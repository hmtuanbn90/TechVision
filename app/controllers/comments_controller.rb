class CommentsController < ApplicationController
  before_action :comment_params

    def create
      @comment = User.find_by(id:1).comments.build(comment_params)

      respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.review, notice: 'Created' }
        format.js   { }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :review_id, :user_id)
    end

end

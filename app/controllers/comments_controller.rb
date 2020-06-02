class CommentsController < ApplicationController
  before_action :correct_user,    only: :destroy


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

    def destroy
      @comment.destroy
      flash[:success] = "comment deleted"
      redirect_to request.referrer || root_url
    end


  private

    def comment_params
      params.require(:comment).permit(:content, :review_id, :user_id)
    end

    def correct_user
      @comment = .review.find_by(id: params[:id])
      redirect_to root_url if @review.nil?
    end

end

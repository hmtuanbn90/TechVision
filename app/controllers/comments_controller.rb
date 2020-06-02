class CommentsController < ApplicationController

    def create
      @comment = User.find_by(params[:id]).comments.build(comment_params)
      respond_to do |format|
        if @comment.save
          format.html { redirect_to @comment.review, notice: 'Created'}
          format.js   { }
          format.json { render :show, status: :created, location: @comment }
        else
          format.html { render :new }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
      @comment = Comment.find(params[:id])
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to @review if @comment.nil?
      flash[:success] = "comment deleted"
      redirect_to request.referrer || root_url
    end


  private

    def comment_params
      params.require(:comment).permit(:content, :review_id, :user_id)
    end

end

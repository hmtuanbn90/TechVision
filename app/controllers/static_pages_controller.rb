class StaticPagesController < ApplicationController
  def home
    @review_new = Review.hot
    @recentPosts = Review.reviewNew
    @topicNumbers = Topic.all
 # scrop
    @reviewTops = Review.topLikes1
    @hashtags = Hashtag.all
  end

  def search
    @hashtagAll   = Hashtag.all
    if params[:title]
    @reviews     = Review.searchReview(params[:title])
    respond_to do |format|
      format.json {
        render json: @reviews
      }
    end
    elsif params[:search].blank?
      redirect_to(root_path, alert: "Empty field!")
    else
      parameter = params[:search].downcase
      @parameter = params[:search].downcase
      @reviews = Review.searchListReview(parameter).paginate(
        :page => params[:page], :per_page => 10)
    end
  end
end


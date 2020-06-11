class StaticPagesController < ApplicationController

  def home

     @review_new   = Review.where(hot:true).order("created_at desc").limit(2)
     @RecentPosts  = Review.order("created_at desc").limit(11)
     @topicNumbers = Topic.all
     likes         = Like.group(:review_id).count
     likesMax      = likes.sort_by { |review_id, v| v.to_s }.to_h
     listLike      = []
     likesMax.each   do |like|
     reviewId      = like[0]
     reviewTop     = Review.find(reviewId)
     listLike      << reviewTop
    end
    @reviewTops    = listLike.reverse
    @hashtags      = Hashtag.all
  end
  def search
    @hashtagAlls   = Hashtag.all
    @params        = params[:title]
    if @params
    @reviews     = Review.select(:title, :id).where("title like ?", "%#{params[:title]}%").limit(5)
    respond_to do |format|
      format.json {
        render json: @reviews
      }
    end
    elsif params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
      @parameter = params[:search].downcase
      @results   = Review.all.where("lower(title) LIKE :search", search: "%#{@parameter}%").paginate(:page => params[:page], :per_page => 10)
    end
  end

end


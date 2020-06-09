class StaticPagesController < ApplicationController

  def home

     @review_new   = Review.order("created_at desc").limit(2)
     @RecentPosts1 = Review.last(6)
     @RecentPosts2 = Review.limit(1).offset(6)
     @RecentPosts3 = Review.limit(6).offset(7)
     @MostReades   = Review.order("view desc").limit(4)
     @topicNumbers = Topic.all
     @review       = 1
     @hashtags     = Hashtag.all
  end
  def search
     @reviews = Review.select(:title, :id).where("title like ?", "%#{params[:title]}%").limit(5)
    respond_to do |format|
      format.json {
        render json: @reviews
      }
    end
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
        @parameter = params[:search].downcase
        @results   = Review.all.where("lower(title) LIKE :search", search: "%#{@parameter}%").paginate(:page => params[:page], :per_page => 10)
    end
  end


end


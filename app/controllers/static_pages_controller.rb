class StaticPagesController < ApplicationController

  def home

     @review_new = Review.order("created_at desc").limit(2)
     @RecentPosts1 =Review.last(6)
     @RecentPosts2 =Review.limit(1).offset(6)
     @RecentPosts3 =Review.limit(6).offset(7)
     @MostReades = Review.order("view desc").limit(4)
     @topicNumbers = Topic.all
     @review = 1
  end
  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
        @parameter = params[:search].downcase
        @results = Review.all.where("lower(tittle) LIKE :search", search: "%#{@parameter}%").paginate(:page => params[:page], :per_page => 10)

    end

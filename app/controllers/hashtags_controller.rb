class HashtagsController < ApplicationController
  def index

    @hashtags = Hashtag.select(:id, :name).where("name like ?", "%#{params[:name]}%").limit(5)
    respond_to do |format|
      format.json {
        render json: @hashtags
      }
  end
end
  def show
    @hashtag    = Hashtag.find(params[:id])
    @reviews    = @hashtag.reviews.paginate(:page => params[:page], :per_page => 10)
    @hashtagAlls = Hashtag.all
  end
  def create

  end
  def new

  end
end
# def self.search(term)
#   where('LOWER(name) LIKE :term ', term: "%#{term.downcase}%")
# end



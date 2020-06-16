class HashtagsController < ApplicationController
  def index
    @hashtags = Hashtag.searchHashtag(params[:name])
    respond_to do |format|
      format.json {
        render json: @hashtags
      }
    end
  end

  def show
    @hashtag = Hashtag.find params[:id]
    @reviews = @hashtag.reviews.paginate :page => params[:page], :per_page => 10
    @hashtagAll = Hashtag.all
  end
end




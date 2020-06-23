class TopicsController < ApplicationController
  def show
    @topic = Topic.find params[:id]
    @reviews = @topic.reviews.paginate(page: params[:page], per_page: 10)
  end
end

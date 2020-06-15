module LikesHelper
  def pre_like
    likes = Like.all
    @pre_like = @review.likes.find {|like| like.user_id == current_user.id}
  end
end

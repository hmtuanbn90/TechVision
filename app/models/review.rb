class Review < ApplicationRecord

  belongs_to :user
  belongs_to :topic
  has_many :likes , dependent: :destroy
  has_many :hashtag_details, dependent: :destroy
  has_many :hashtags, through: :hashtag_details
  has_many  :comments, dependent: :destroy
  scope :hot, -> {where(hot: true).order(created_at: :desc).limit(2)}
  scope :reviewNew, -> {order(created_at: :desc).limit(11)}
  scope :searchReview, ->(title){select(:title, :id).where("title like ?",
   "%#{title}%").limit(5)}
  scope :searchListReview, ->(parameter){where("lower(title) LIKE :search",
   search: "%#{parameter}%")}
  scope :topLikes1, -> {Review.joins("INNER JOIN (select review_id, count(user_id)
    as total from likes group by review_id order by total desc limit 5)
     a ON reviews.id = a.review_id").order("total DESC")}
  scope :reviewRelate, ->  (idReview){Review.joins("INNER JOIN (select hashtag_id,
    from hashtag_details where review_id = #{idReview})
     a ON reviews.id = a.review_id limit 5")}
  idHashtags = "select hashtag_id from hashtag_details where review_id = ?"
  idReviews = "select review_id from hashtag_details where hashtag_id in
    (#{idHashtags}) and review_id <> ?"
  scope :reviewHashtag, -> (id){Review.where("id in
    (#{idReviews})", id, id).limit(5)}
	validates :user_id, presence: true
	validates :content, presence: true, length: { maximum: 5000 }
  def bookmark(other_user)
    bookmarks << other_user
  end

  def deletebookmark(other_user)
    bookmarks.delete(other_user)
  end

  def bookmark?(other_user)
    bookmarks.include?(other_user)
  end
end

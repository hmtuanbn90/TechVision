class Bookmark < ApplicationRecord
  belongs_to :review
  belongs_to :user
  validates :review_id, presence: true
  validates :user_id, presence: true
  scope :bookmarked, -> (review_id, user_id){where("review_id = ? AND user_id = ?", review_id, user_id)}

  def self.to_csv
    CSV.generate(headers: true) do |csv|
      csv << %w{ review_id review_title poster bookmarker}
      Bookmark.all.each do |bookmark|
        csv << [
          bookmark.review_id,
          bookmark.review.title,
          bookmark.review.user.name,
          bookmark.user.name
        ]
      end
    end
  end
end

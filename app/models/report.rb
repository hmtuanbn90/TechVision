class Report < ApplicationRecord
  belongs_to :review
  belongs_to :user
  validates :review_id, presence: true
  validates :user_id, presence: true
  scope :reported, -> (review_id, user_id){where("review_id = ? AND user_id = ?", review_id, user_id)}
end

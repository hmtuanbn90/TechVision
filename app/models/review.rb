class Review < ApplicationRecord
  has_many :hashtag_details, dependent: :destroy
  has_many :hashtags, through: :hashtag_details
  belongs_to :user
  belongs_to :topic
  has_many  :comments, dependent: :destroy
	default_scope -> { order(created_at: :desc) }
	validates :user_id, presence: true
	validates :content, presence: true, length: { maximum: 5000 }
end

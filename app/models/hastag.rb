class Hastag < ApplicationRecord
  belongs_to :review
  belongs_to :topic
  validates :review_id, :topic_id, presence: true
  validates :name, presence: true, length: { maximum: 140 }
end

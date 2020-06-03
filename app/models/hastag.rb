class Hastag < ApplicationRecord

  belongs_to :review
  belongs_to :topic
  has_many :hagtag_details
  validates :review_id, :topic_id, presence: true
  validates :name, presence: true, length: { maximum: 140 }
end

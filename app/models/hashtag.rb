class Hashtag < ApplicationRecord

  has_many :hashtag_details
  has_many :reviews, through: :hashtag_details
  validates :name, presence: true, length: { maximum: 140 }
end

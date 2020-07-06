class HashtagDetail < ApplicationRecord
  belongs_to :hashtag
  belongs_to :review
  accepts_nested_attributes_for :hashtag
end

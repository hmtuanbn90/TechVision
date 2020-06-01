class Comment < ApplicationRecord

  belongs_to :review
  belongs_to :user
  default_scope -> {order(created_at: :desc)}

  validates :review_id,  presence: true
  validates :user_id,    presence: true
  validates :content,    presence: true

end




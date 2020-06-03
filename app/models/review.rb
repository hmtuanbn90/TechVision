class Review < ApplicationRecord

  belongs_to :user
  has_many :hastags, dependent: :destroy
  has_many :topic, through: :hastags

end

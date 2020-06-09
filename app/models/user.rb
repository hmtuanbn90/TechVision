class User < ApplicationRecord

  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
end

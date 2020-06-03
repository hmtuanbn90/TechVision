class Topic < ApplicationRecord
  has_many :hastags, dependent: :destroy
  has_many :reviews
end

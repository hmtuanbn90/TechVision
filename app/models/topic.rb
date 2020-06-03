class Topic < ApplicationRecord
  has_many :hastags, dependent: :destroy
  has_many :review, through: :hastags
end

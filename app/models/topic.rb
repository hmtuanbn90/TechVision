class Topic < ApplicationRecord

  has_many :reviews, dependent: :destroy
end

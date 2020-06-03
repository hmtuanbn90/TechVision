class Hastag < ApplicationRecord

  has_many :hagtag_details
  validates :name, presence: true, length: { maximum: 140 }
end

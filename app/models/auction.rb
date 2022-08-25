class Auction < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  has_one_attached :image

  validates :title, presence: true
  validates :description, presence: true
end

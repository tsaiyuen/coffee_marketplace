class Coffee < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :orders, dependent: :destroy
  has_many :reviews, through: :orders
  
  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { in: 20..200 }
  validates :price, presence: true
end

class Coffee < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
<<<<<<< HEAD
  has_one_attached :image
  
=======

>>>>>>> c81993125864579a5541de0cf8290f3abc0d8b1c
  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { in: 20..200 }
  validates :price, presence: true
end

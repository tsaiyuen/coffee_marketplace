class Coffee < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { in: 20..200 }
  validates :price, presence: true
end

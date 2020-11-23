class Review < ApplicationRecord
  belongs_to :order
  
  validates :rating, presence: true
  validates :rating, length: { in: 0..5 }
  validates :description, presence: true
  validates :description, length: { in: 20..200 }
end



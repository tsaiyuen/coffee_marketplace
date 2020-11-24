class Coffee < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  has_many :orders

=======
  has_many :orders, dependent: :destroy
  
>>>>>>> main
  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { in: 20..200 }
  validates :price, presence: true
end

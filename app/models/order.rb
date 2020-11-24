class Order < ApplicationRecord
  belongs_to :user
  belongs_to :coffee
  has_many :reviews, dependent: :destroy

  validates :quantity, presence: true
end

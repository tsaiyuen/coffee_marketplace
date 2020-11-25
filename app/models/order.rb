class Order < ApplicationRecord
  belongs_to :user
  belongs_to :coffee
  has_many :reviews, dependent: :destroy

  validates :quantity, presence: true

  before_save :calculate_total_price

  def calculate_total_price
    self.order_value = self.quantity * self.coffee.price
  end
end

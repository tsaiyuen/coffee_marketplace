class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @order = Order.find(params[:order_id])
  end

  def create
    @review = Review.new(review_params)
    @order = Order.find(params[:order_id])
    @review.order = @order
    # @review.coffee = @coffee
    # Order.quantity = @coffee
    if @review.save
      redirect_to coffee_path(@review)
    else
      render "new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end

end

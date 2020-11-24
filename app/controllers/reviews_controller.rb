class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # @review.coffee = @coffee
    # Order.quantity = @coffee
    if @review.save
      redirect_to coffee_path(@review)
    else
      render "new"
    end
  end

  private

  def set_coffee
    @coffee = Coffee.find(params[:coffee_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

end

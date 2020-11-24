class OrderController < ApplicationController
  before_action :set_order, only: [:new, :create]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.coffee = @coffee
    @order.user = @user
    if @order.save
      redirect_to @order, notice: "We have successfully placed your order!"
      # this might be something else
    else
      render :new
    end
  end

  private

  def set_order
    @user = User.find(params[:user_id])
    @coffee = Coffee.find(params[:coffee_id])
  end

  def order_params
    params.require(:order).permit(:quantity, :order_value)
end

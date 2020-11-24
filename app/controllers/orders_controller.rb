class OrdersController < ApplicationController
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
    @order.user = current_user
    if @order.save
      redirect_to orders_path, notice: "We have successfully placed your order!"
      # this might be something else
    else
      render :new
    end
  end

  private

  def set_order
    @user = User.find(params[:user_id]) rescue nil
    @coffee = Coffee.find(params[:coffee_id]) rescue nil
  end

  def order_params
    params.require(:order).permit(:quantity, :order_value)
  end
end

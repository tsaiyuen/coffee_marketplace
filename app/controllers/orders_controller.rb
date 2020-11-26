class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    authorize @order
    @order.user_id = current_user.id

    if @order.save
      redirect_to orders_path, notice: "We have successfully placed your order!"
    else
      render :new
    end
  end
  
  def edit
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :coffee_id)
  end
end

class CoffeesController < ApplicationController
  before_action :set_coffee, only: [:show, :edit, :update, :destroy]

  def index
    @coffees = policy_scope(Coffee)
  end

  def show
  end

  def new
    @coffee = Coffee.new
    authorize @coffee
  end

  def create
    @coffee = Coffee.new(coffee_params)
    @coffee.user = current_user
    authorize @coffee
    if @coffee.save
      redirect_to coffee_path(@coffee)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @coffee.user = current_user
    if @coffee.update(coffee_params)
      redirect_to coffee_path(@coffee), notice: "Coffee successfuly updated!"
    else
      render :edit
    end
  end

  def destroy
    @coffee.destroy
    redirect_to coffees_path
  end

  private

  def set_coffee
    @coffee = Coffee.find(params[:id])
    authorize @coffee
  end

  def coffee_params
    params.require(:coffee).permit(:name, :description, :price, :photo)
  end
end

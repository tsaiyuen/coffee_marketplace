class CoffeesController < ApplicationController

  def index
    @coffees = Coffee.all
  end

  def show
    @coffee = Coffee.find(params[:id])
    # make a form with button "place order" to create order
  end

  def new
    @coffee = Coffee.new
  end

  def create
    @coffee = Coffee.new(coffee_params)
    @coffee.user = current_user
    if @coffee.save
      redirect_to coffee_path(@coffee)
    else
      render "new"
    end
  end

  def edit
    @coffee = Coffee.find(params[:id])
  end

  def update
    @coffee = Coffee.find(params[:id])
    @coffee.user = current_user
    if @coffee.update(coffee_params)
      redirect_to coffee_path(@coffee), notice: "Coffee successfuly updated!"
    else
      render :edit
    end
  end

  def destroy
    @coffee = Coffee.find(params[:id])
    @coffee.destroy
    redirect_to coffees_path
  end
  
 
  private
  def coffee_params
  params.require(:coffee).permit(:name, :description, :price, :photo)
  end
  
  

end

class UsersController < ApplicationController
  def index
    @users = User.includes(:coffees)
    @coffees = Coffee.all
  end
end

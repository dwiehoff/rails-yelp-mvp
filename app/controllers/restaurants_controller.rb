class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.create(restaurant_params)
    if restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def show
  end

  private

  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

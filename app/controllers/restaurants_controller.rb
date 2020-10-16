class RestaurantsController < ApplicationController
  def index # all restaurants
    @restaurants = Restaurant.all
  end

  def show

  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end


  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
  end
end

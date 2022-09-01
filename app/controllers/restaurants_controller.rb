class RestaurantsController < ApplicationController
  # before_action :set_restaurant

  def index
    @restaurants = Restaurant.all
  end

  def show

  end

  # private
  # def set_restaurant
  #   @restaurant = Restaurant(params[:id])
  # end
end

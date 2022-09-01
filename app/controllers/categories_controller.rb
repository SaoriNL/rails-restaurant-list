class CategoriesController < ApplicationController
  # before_action :set_category
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @restaurant = Restaurant.where(category_id: @category.id)
  end

  def new
  end

  def create
  end

  def update
  end

  def delete
  end

  # private
  # def set_category
  #   @category = Category.find(params[:id])
  # end
end

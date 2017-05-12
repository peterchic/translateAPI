class Api::V1::CategoriesController < ApplicationController


  def index
    @categories = Category.all
    render json: @categories
  end

  # def new
  #   @category = Category.new
  # end

  def create
    # binding.pry
    # binding.pry
    @category = Category.create(title: params[:title])
    render json: @category
  end

  def show
    # binding.pry
    @category = Category.find(params[:id])
    render json: @category
  end

  # private
  #
  # def cat_params
  #   params.require(:category).permit(:title)
  # end

end

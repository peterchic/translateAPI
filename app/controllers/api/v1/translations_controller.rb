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
    @category = Category.create(params[:title])
    render json: category, status: 201
  end

  # def show
  #   @category = Category.find(params[:id])
  #   respond_to do |format|
  #     format.html { render :show }
  #     format.json { render json: @category }
  #   end
  # end

  # private
  #
  # def cat_params
  #   params.require(:category).permit(:title)
  # end

end

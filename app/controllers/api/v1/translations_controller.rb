class Api::V1::TranslationsController < ApplicationController


  def index
    @translations = Translation.all
    render json: @translations
  end

  # def new
  #   @translation = Translation.new
  # end

  def create
    # binding.pry
    @category = Category.find_by(title: params[:title])
    @translation = Translation.create(original: params[:original], modified_sp: params[:modified_sp], category_id: @category.id)
    render json: @translation
  end
  # modified: params[:inputPri],

  # def show
  #   @translation = Translation.find(params[:id])
  #   respond_to do |format|
  #     format.html { render :show }
  #     format.json { render json: @translation }
  #   end
  # end

  # private
  #
  # def cat_params
  #   params.require(:translation).permit(:title)
  # end

end

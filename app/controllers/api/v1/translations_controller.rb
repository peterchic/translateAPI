class Api::V1::TranslationsController < ApplicationController

  def index
    @translations = Translation.all
    render json: @translations
  end

  def create
    @category = Category.find_by(title: params[:title])
    @translation = Translation.create(original: params[:original], modified_sp: params[:modified_sp], category_id: @category.id)
    render json: @translation
  end


  # private
  #
  # def cat_params
  #   params.require(:translation).permit(:title)
  # end

end

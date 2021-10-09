class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  def update
    if @category.update(category_params)
      redirect_to category_url(@category), notice: 'Se actualizo correctamente'
    else
      render :edit, notice: "Hubo un problema al actualizar"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end

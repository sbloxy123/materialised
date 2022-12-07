class MaterialsController < ApplicationController
  def index
    if params[:query].present?
      @materials = Material.where(category: params[:query])
    else
      @materials = Material.all
    end
  end

  def show
    @material = Material.find(params[:id])
  end


  private

  def material_params
    params.require(:material).permit(:name, :category, :description, :length, :price, :width, :weight)
  end
end

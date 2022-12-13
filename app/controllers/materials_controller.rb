class MaterialsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query"
      @materials = Material.where(sql_query, query: "%#{params[:query]}%")
    else
      @materials = Material.all
    end
  end

  def show
    @material = Material.find(params[:id])
    @basket = Basket.new
    @order = current_user.orders.last # TO-DO: Fix last with pending order
    # @basket_items = @order.baskets
  end

  private

  def material_params
    params.require(:material).permit(:name, :category, :description, :length, :price, :width, :weight)
  end
end

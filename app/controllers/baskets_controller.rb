class BasketsController < ApplicationController
  before_action :set_basket, only: [:new, :show, :destroy]

  def index
    @order_number = Order.all
    @materials = Material.all
    @basket_items = Basket.all
  end

  def create
    @material = Material.find(params[:material])
    @the_user = current_user
    @basket = Basket.new(basket_params)
    if current_user.order_ids.length < 1
      @order = Order.new
      @order.user = current_user
      @order.save
      @basket.order = @order
    else
      @order = current_user.order_ids.first
      @basket.order_id = @order
    end
    @basket.material = @material
    if @basket.save
      # TODO: ADD ALERT / MODAL
    else
      # TODO: ADD ALERT RE UNSUCCESSFUL
    end
  end

  private

  def set_basket
    @basket = Basket.find(params[:id])
  end

  def basket_params
    params.require(:basket).permit(:quantity)
  end

end

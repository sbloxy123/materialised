class BasketsController < ApplicationController
  before_action :set_basket, only: [:new, :show, :destroy]

  def index
    @order_number = Order.all
    @materials = Material.all
    @basket_items = Basket.all
  end


  def create
    @material = Material.find(params[:material])
    # @basket.order_id = current_user.order_id??
    # todo - if statement - user_session? / current basket
    @basket = Basket.new(basket_params)
    # @basket.order_id = @user???
    @basket.material_id = @material.id
    if @basket.save
      raise
      redirect_to material_path(@material)
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def set_basket
    @basket = Basket.find(params[:id])
  end

  def basket_params
    params.require(:basket).permit(:quantity, :material_id)
  end

end

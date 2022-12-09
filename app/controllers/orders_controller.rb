class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    raise
    @user = current_user.id
    @order = Order.new(order_params)
    @driver = Driver.find(params[:id])
    @order.user = @user

    # @order.driver = @driver
    @order.driver_id = 1

    if @order.save
      redirect_to checkout_path(@order)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @drivers = Driver.all
    @orders_all = Order.all
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to baskets_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:site_location, :order_id, :driver_id, :user_id)
  end
end

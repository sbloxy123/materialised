class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @user = current_user.id
    @order = Order.new(order_params)
    @driver = Driver.find(params[:id])
    @order.user = @user
    @order.driver = @driver
    if @order.save
      redirect_to checkout_path(@order)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:site_location, :order_id, :driver_id, :user_id)
  end
end

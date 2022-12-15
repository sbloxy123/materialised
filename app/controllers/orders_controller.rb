class OrdersController < ApplicationController

  def index
    # driver
    @order = current_user.orders.last
    @markers = [
      {
        lat: @order.driver.latitude,
        lng: @order.driver.longitude,
        image_url: helpers.asset_url("icons/#{@order.driver.vehicle_type}.png")
      },
      {
        lat: @order.supplier.latitude,
        lng: @order.supplier.longitude,
        image_url: @order.supplier.image
      },
      { lat: @order.latitude,
        lng: @order.longitude,
        image_url: helpers.asset_url("icons/construction.png")
      }
    ]
  end

  def new
    @order = Order.new
  end

  def create
    @user = current_user.id
    @order = Order.new(order_params)
    @driver = Driver.find(params[:id])
    @order.user = @user

    # @order.driver = @driver
    @order.driver_id = 1
    @order.supplier_id = 1
    if @order.save
      redirect_to checkout_path(@order)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def show
    @drivers = Driver.all
    @suppliers = Supplier.all
    @orders_all = Order.all
    @order = Order.find(params[:id])
    @markers = []
    @markers << { lat: @order.latitude, lng: @order.longitude, image_url: helpers.asset_url("icons/construction.png") }
    # if @order.driver_id == 1
      # if user clicks button in the view, it will hide/show the driver markers
      # if the user picks a driver, the other drivers will be hidden
      @markers << @drivers.geocoded.map do |driver_coordinates|
        {
          lat: driver_coordinates.latitude,
          lng: driver_coordinates.longitude,
          info_window: render_to_string(partial: "info_window", locals: { driver: driver_coordinates }),
          image_url: helpers.asset_url("icons/#{driver_coordinates.vehicle_type}.png")
        }
      end
    # else
    @markers << @suppliers.geocoded.map do |supplier_coordinates|
      {
        lat: supplier_coordinates.latitude,
        lng: supplier_coordinates.longitude,
        info_window: render_to_string(partial: "supplier_info_window", locals: { supplier: supplier_coordinates }),
        image_url: supplier_coordinates.image
      }
    # end
    end
    @markers = @markers.flatten
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:site_location, :order_id, :driver_id, :user_id, :supplier_id)
  end
end

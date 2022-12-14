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
      @order.state = "pending"
      @order.amount_cents = (@material.price_cents * @basket.quantity) + ((@material.price_cents * @basket.quantity) / 20.to_f)
      @basket.order = @order

      # MUST CHANGE, HARD CODED JUST TO TEST
      @order.supplier_id = 1

      @order.save

      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          price_data: {
            unit_amount: @material.price_cents,
            currency: 'eur',
            product_data: {
              name: "Total amount:",
            }
          },
          quantity: 1
        }],
        mode: "payment",
        success_url: orders_url,
        cancel_url: order_url(@order)
      )

      @order.update(checkout_session_id: session.id)


    else
      @order_id = current_user.order_ids.first
      @order = Order.find(@order_id)
      @basket.order = @order
      @order.amount_cents = @order.amount_cents + (@material.price_cents * @basket.quantity) + ((@material.price_cents * @basket.quantity) / 20.to_f)
      @order.save

      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          price_data: {
            unit_amount: @order.amount_cents,
            currency: 'eur',
            product_data: {
              name: "Total amount:",
            }
          },
          quantity: 1
        }],
        mode: "payment",
        success_url: orders_url ,
        cancel_url: order_url(@order)
      )

      @order.update(checkout_session_id: session.id)
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

class BasketsController < ApplicationController
  def index
    @basket_items = Basket.all
  end
end

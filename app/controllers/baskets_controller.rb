class BasketsController < ApplicationController
  def index
    @materials = Material.all
    @basket_items = Basket.all
  end
end

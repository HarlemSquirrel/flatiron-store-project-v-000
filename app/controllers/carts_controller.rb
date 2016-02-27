class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def checkout
    cart = Cart.find(params[:id])
    cart.status = "submitted"
    redirect_to cart_path(cart)
  end
end

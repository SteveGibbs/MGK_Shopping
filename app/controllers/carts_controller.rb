class CartsController < ApplicationController
  def show
    @cart = @current_cart
  end

  def destroy
    @cart = @current_cart

    # When we click on the link empty_cart which calls the carts#destroy action we want to also destroy all items belonging to the cart we are about to destroy
    @cart.items.each do |item|
      item.destroy
    end

    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
end

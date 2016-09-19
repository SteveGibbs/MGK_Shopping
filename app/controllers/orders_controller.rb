class OrdersController < ApplicationController
  def new
    @order = Order.new
    @cart = @current_cart
  end

  def create
    @order = Order.new(order_params)
    # We watn to pass in all the cart items to the order model
    @current_cart.items.each do |item|
      @order.items << item
      item.cart_id = nil
    end

    @order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
    redirect_to root_path
  end

  def index
    @orders = Order.all
  end

  def show
  end

  def edit
  end

  private
    def order_params
      params.require(:order).permit(:name, :address, :status)
    end
end

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
      # item.cart_id = nil
    end

    @order.save
    # Store the order id in a session
    if @order.save
      session[:order_id] = @order.id
    end
    # Cart.destroy(session[:cart_id])
    # session[:cart_id] = nil

    redirect_to new_charge_path
  end

  def index
    @orders = Order.all
    respond_to do |f|
      f.html {}
      f.json { render :json => @orders.to_json(:include => {:items => {:include => :product } } )}
    end
  end

  def show
    @order = Order.find(params[:id])
    @cart = @current_cart
    @total_amount_to_be_paid = @cart.total
  end

  def edit
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private
    def order_params
      params.require(:order).permit(:name, :address1, :status)
    end
end

class ChargesController < ApplicationController
  def new
    @cart = @current_cart
    @total_amount_to_be_paid = @cart.total
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

    @cart = @current_cart

    # @order.items.each do |item|
    #   item.cart_id = nil
    # end

    @order_id = @current_cart.items.first.order_id
    @order = Order.find_by(:id => @order_id)
    @order.status = "Paid"
    @order.save


    # binding.pry


    cart = Cart.find_by(:id => session[:cart_id])
    Cart.destroy(session[:cart_id]) #SK: current_cart is destroyed once payment POST req is finished
    session[:cart_id] = nil


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

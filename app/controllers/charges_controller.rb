class ChargesController < ApplicationController
  def new
    @cart = @current_cart
    @total_amount_to_be_paid = @cart.total
  end

  def create

    #STRIPE
    @amount = 500 # Amount in cents

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :receipt_email => params[:stripeEmail],
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

    @cart = @current_cart

    # @order.items.each do |item|
    #   item.cart_id = nil
    # end

    #CHANGING ORDER STATUS TO "PAID"
    @order_id = @current_cart.items.first.order_id
    @order = Order.find_by(:id => @order_id)
    @order.status = "Paid"
    @customer = @order.name #this is actually an email!
    @address = @order.address1
    @items = @order.items
    if @order.save

    #MAILER
      UserMailer.welcome(@customer, @address, @items).deliver_now
    end

    #DESTROYING THE CART ONCE THE PAYMENT IS MADE THROUGH STRIPE
    cart = Cart.find_by(:id => session[:cart_id])
    Cart.destroy(session[:cart_id]) #SK: current_cart is destroyed once payment POST req is finished
    session[:cart_id] = nil


  #STRIPE
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

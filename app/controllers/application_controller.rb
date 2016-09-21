class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_cart
  before_action :fetch_user

  private
    # Create new empty cart when new user visits
    def current_cart
      if session[:cart_id]
        cart = Cart.find_by(:id => session[:cart_id])
        if cart.present?
          @current_cart = cart
        else
          session[:cart_id] = nil
        end
      end

      if session[:cart_id] == nil
        @current_cart = Cart.create
        session[:cart_id] = @current_cart.id
      end
    end

    # Find current user logged in by session[:user_id]. If there is no user by taht id then set session to nil
    def fetch_user
      @current_user = User.find_by(:id => session[:user_id]) if session[:user_id]

      session[:user_id] = nil unless @current_user.present?
    end

end

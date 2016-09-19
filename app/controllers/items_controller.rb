class ItemsController < ApplicationController
  def create
    chosen_product = Product.find(params[:product_id])
    if @current_cart.products.include?(chosen_product)
      # We want to find the item with that product and increment its quantity by one
      @item = Item.find_by(:product_id => chosen_product)
      @item.quantity += 1
    else
      @item = Item.new  # Instantiating a new Item class
      @item.cart = @current_cart # Append the @current_cart from the session to the item's belongs_to cart relationship
      @item.product = chosen_product
    end

    @item.save
    redirect_to carts_show_path(@current_cart)
  end

  def add_quantity
    @item = Item.find(params[:id])
    @item.quantity += 1
    @item.save
    redirect_to carts_show_path(@current_cart)
  end

  def reduce_quantity
    @item = Item.find(params[:id])
    if @item.quantity > 1
      @item.quantity -= 1
    end
    @item.save
    redirect_to carts_show_path(@current_cart)
  end


  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to carts_show_path(@current_cart)
  end

  private
    def item_params
      params.require(:item).permit(:product_id, :cart_id, :order_id, :quantity)
    end
end

class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @cart = @current_cart #Samit testing
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :product_desc1, :product_desc2, :price, :active, :image, :brand_id)
  end
end

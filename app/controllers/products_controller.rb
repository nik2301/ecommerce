class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    render 'new'
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render 'new'
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end

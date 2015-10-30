class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @transgression = Product.new
  end

  def create
    @transgression = Product.new(product_params)

    if @transgression.save
      redirect_to products_path
    else
      render :new
    end
  end
  def product_params
    return params.require(:product).permit(:name, :description)
  end
end

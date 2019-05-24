class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save!
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, discs_attributes: [:number, songs_attributes: [:name]])
  end
end

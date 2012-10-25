class ProductsController < ApplicationController
  def index
    @products = Product.find :all
  end

  def show
    @product = Product.find params[:slug]
  end
end

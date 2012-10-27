class ProductsController < ApplicationController
  def index
    price = 200
    country = 'brazil'
    # Here I want to find all those products which matches country=brazil and price=200, 
    # So what changes is required here?
    @products = Product.find :all
  end

  def show
    @product = Product.find params[:slug]
  end
end

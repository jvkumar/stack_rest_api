require "sinatra"
require "sinatra/json"

# Database-less model for sample purposes only
$products = [
  { id: 1, name: "Product One", desc: "a description of product one", country: "brazil", price: 200},
  { id: 2, name: "Product Two", desc: "a description of product two", country: "us", price: 300 },
  { id: 3, name: "Product Three", desc: "a description of product three", country: "brazil", price: 200 }
]

get "/products.json" do
  json products: $products 
end

get "/products/:slug.json" do
  # messy, sue me
  $products.each do |p|
    # super dirty
    slug = p[:name].downcase.gsub(" ", "-")
    if slug == params[:slug]
      @product = p
    end
  end
  @product = "not found" if @product.nil?
  json product: @product
end

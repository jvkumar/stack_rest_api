require "sinatra"
require "sinatra/json"

# Database-less model for sample purposes only
$products = [
  { id: 1, name: "Product One", desc: "a description of product one" },
  { id: 2, name: "Product Two", desc: "a description of product two" },
  { id: 3, name: "Product Three", desc: "a description of product three" }
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

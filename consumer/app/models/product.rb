class Product < ActiveResource::Base
  # One more thing, my API end point does not end with .json
  # suppose I assume my API alwasy returns json
  # API url will look like http://sinatrapp.com/products?price=00&country=usa
  # How this will map?
  def slug
    self.name.parameterize
  end
end

class Product < ActiveResource::Base
  def slug
    self.name.parameterize
  end
end

Consumer::Application.routes.draw do
  match "/products/:slug" => "products#show", as: :product
  root to: "products#index"
end

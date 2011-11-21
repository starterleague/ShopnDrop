Shopper::Application.routes.draw do
  
  get "products/index"
  get "cart/checkout"

  delete "cart/:id" => "cart#destroy", :as => :reset_cart
  
  root :to => 'products#index'
  resources :cart_items
  
  post '/cart/:product_id' => 'cart_items#create', :as => 'add_to_cart'
end

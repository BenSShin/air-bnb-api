Rails.application.routes.draw do
  get "/rooms" => "rooms#index"
  post "/rooms" => "rooms#create"
  get "/rooms/:id" => "rooms#show"
  patch "/rooms/:id" => "rooms#update"
  delete "/rooms/:id" => "rooms#destroy"
  
  # reservation routes
  get "/reservations" => "reservations#index"
  get "/reservations/:id" => "reservations#show"
  post "/reservations" => "reservations#create"
  patch "/reservations/:id" => "reservations#update"
  delete "/reservations/:id" => "reservations#destroy"
  
  # users and sessions routes
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  #reviews routes
  # reservation routes
  get "/reviews" => "reviews#index"
  get "/reviews/:id" => "reviews#show"
  post "/reviews" => "reviews#create"
  patch "/reviews/:id" => "reviews#update"
  delete "/reviews/:id" => "reviews#destroy"
end

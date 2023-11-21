Rails.application.routes.draw do
  # reservation routes
  get "/reservations" => "reservations#index"
  get "/reservations/:id" => "reservations#show"
  post "/reservations" => "reservations#create"
  patch "/reservations/:id" => "reservations#update"
  delete "/reservations/:id" => "reservations#destroy"
  # users and sessions routes
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end

Rails.application.routes.draw do
  get "/addresses" => "addresses#index"
  get "/rooms" => "rooms#index"
  get "/houses" => "houses#index"

  # reservation routes
  get "/reservations" => "reservations#index"
  get "/reservations/:id" => "reservations#show"
  post "/reservations" => "reservations#create"
  patch "/reservations/:id" => "reservations#update"
  delete "/reservations/:id" => "reservations#destroy"
end

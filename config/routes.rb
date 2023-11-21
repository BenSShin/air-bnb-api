Rails.application.routes.draw do
  get "/addresses" => "addresses#index"
  get "/rooms" => "rooms#index"
  get "/houses" => "houses#index"

  # reservation routes
  get "reservations" => "reservations#index"
  get "reservations" => "reservations#show"
  post "reservations" => "reservations#create"
  patch "reservations" => "reservations#update"
  delete "reservations" => "reservations#destroy"
end

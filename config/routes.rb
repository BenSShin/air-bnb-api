Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Rooms routes
  get "/rooms" => "rooms#index"
  post "/rooms" => "rooms#create"
  get "/rooms/:id" => "rooms#show"
  patch "/rooms/:id" => "rooms#update"
  delete "/rooms/:id" => "rooms#destroy"
end

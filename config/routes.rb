Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Hey check out this cool comment.
  get "/addresses" => "addresses#index"
  get "/rooms" => "rooms#index"
end

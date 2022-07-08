Rails.application.routes.draw do
  get '/products/favorites' => 'products#favorites'

  resources :categories
  resources :product_categories
  resources :interests
  resources :bids
  resources :products
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  get '/home' => 'welcome#home'
  # Defines the root path route ("/")
  root "products#index"

end

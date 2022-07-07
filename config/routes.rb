Rails.application.routes.draw do
  resources :categories
  resources :product_categories
  resources :interests
  resources :bids
  resources :products
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # Defines the root path route ("/")
  root "products#index"
end

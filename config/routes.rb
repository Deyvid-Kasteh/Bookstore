Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/search'
  post 'homepage/search'
  resources :books
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

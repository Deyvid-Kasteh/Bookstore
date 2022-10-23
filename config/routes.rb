Rails.application.routes.draw do
  get 'livroshpazkaban/index'
  get 'livroshpazkaban/busca'
  get 'livroshpazkaban/livros'
  root 'homepage#index'
  get 'homepage/search'
  get 'homepage/livros'
  #post 'homepage/search'
  resources :books
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

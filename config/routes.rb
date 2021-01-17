Rails.application.routes.draw do
  get 'books/new'
  get 'books/create'
  get 'books/show'
  root 'main#index'

  get 'main/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :groups do
    resources :books_groups
  end
  resources :books
end

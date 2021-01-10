Rails.application.routes.draw do
  root 'main#index'

  get 'main/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :groups
end

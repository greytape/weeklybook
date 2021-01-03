Rails.application.routes.draw do
  get 'sessions/new'
  root 'main#index'

  get 'main/index'

  resources :users
end

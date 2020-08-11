Rails.application.routes.draw do
  devise_for :users
  root to: 'todos#index'
  resources :todos, only: [:create, :destroy]
end

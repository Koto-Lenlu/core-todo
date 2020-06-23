Rails.application.routes.draw do
  resources :todos, only: [:index, :create, :new]
  root to: 'todos#index'
end

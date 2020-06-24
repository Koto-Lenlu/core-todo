Rails.application.routes.draw do
  resources :todos, only: [:index, :create, :new, :edit]
  root to: 'todos#index'
end

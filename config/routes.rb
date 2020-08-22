Rails.application.routes.draw do
  devise_for :users
  root to: 'todos#index'
  resources :todos, only: [:index, :create, :destroy, :edit, :update] do
    member do
      get 'pomodoro'
      post 'done'
      post 'next'
    end
  end
end

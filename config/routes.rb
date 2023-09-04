Rails.application.routes.draw do
  resources :users, only: [:index,:new, :create, :destroy]
  resources :gifts do
    resources :purchases, only: [:new, :create]
  end

  root 'gifts#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end

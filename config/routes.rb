Rails.application.routes.draw do
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  get '/api/pokemon', to: 'pokemons#index'
end
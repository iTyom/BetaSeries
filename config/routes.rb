Rails.application.routes.draw do
  resources :episodes
  devise_for :users
  # resources :series
  # resources :seasons

  resources :series, only: [:show]
  resources :seasons, only: [:show]
  resources :episodes, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "series#index"
end

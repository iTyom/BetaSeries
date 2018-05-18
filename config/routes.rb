Rails.application.routes.draw do
  devise_for :users
  # resources :series
  # resources :seasons

  resources :series, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "series#index"
end

Rails.application.routes.draw do
  resources :users_episodes_series
  resources :bookmarks
  resources :notes
  resources :episodes
  devise_for :users
  # resources :series
  # resources :seasons

  resources :series, only: [:show] do
    resources :bookmarks, only: [:create, :delete]
  end

  resources :bookmarks, only: [:show]

  resources :seasons, only: [:show]

  resources :episodes, only: [:show] do
    resources :notes, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "series#index"
end

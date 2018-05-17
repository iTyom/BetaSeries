Rails.application.routes.draw do
  resources :series
  resources :seasons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "series#index"
end

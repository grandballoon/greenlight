Rails.application.routes.draw do
  resources :tropes
  resources :genres
  resources :shows
  resources :actors
  resources :characters
  resources :episodes
  resources :producers, only: [:new, :create, :delete]
  resources :sessions, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/welcome", to: "producers#welcome", as: "welcome"
  get "/profile", to: "producers#show", as: "profile"
  delete "/logout", to: "sessions#destroy"
end

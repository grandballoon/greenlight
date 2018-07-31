Rails.application.routes.draw do
  resources :tropes
  resources :genres
  resources :shows
  resources :actors
  resources :characters
  resources :episodes
  resources :producers, only: [:new, :create, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/welcome", to: "producers#welcome", as: "welcome"
  get "/signup", to: "producers#signup", as: "signup"
end

Rails.application.routes.draw do
  resources :shows
  resources :actors
  resources :characters
  resources :episodes
  resources :producers, only: [:new, :create, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

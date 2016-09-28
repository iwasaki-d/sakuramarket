Rails.application.routes.draw do
  resources :commodities, only: %i(show), format: false
  resources :cart_commodities, only: %i(create), format: false
  devise_for :users
  root to: 'home#index'
end

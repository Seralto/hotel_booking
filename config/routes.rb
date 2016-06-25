Rails.application.routes.draw do
  devise_for :users
  mount API => '/'

  root 'home#index'

  resources :hotels
  resources :bookings
end

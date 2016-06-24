Rails.application.routes.draw do
  mount API => '/'

  root 'home#index'

  resources :hotels
end

Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :hotels
  resources :bookings

  mount HotelBooking::V1 => '/'
end

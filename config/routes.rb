Rails.application.routes.draw do
  resources :bookings
  resources :salaries
  resources :employs
  resources :expenses
  resources :rooms
  devise_for :users
  get '/dashboard' ,to:  'static_files#dashboard'
  root 'static_files#dashboard'
end

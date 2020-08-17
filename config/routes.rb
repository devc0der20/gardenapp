Rails.application.routes.draw do
  devise_for :users
  root to: 'gardens#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get '/gardens', to: "gardens#index"
  get '/gardens/:id', to: "gardens#show"
  get '/gardens/:id/bookings/new', to: "bookings#new"
  get '/bookings/:id', to: "bookings#show"
  post '/gardens/:id/bookings/', to: "bookings#create"


end

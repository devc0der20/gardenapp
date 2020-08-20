Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  get '/gardens', to: "gardens#index"
  get '/gardens/:id', to: "gardens#show", as: :garden
  get '/gardens/:id/bookings/new', to: "bookings#new", as: :garden_bookings
  get '/bookings/:id', to: "bookings#show", as: :booking
  post '/gardens/:id/bookings/new', to: "bookings#create"
end

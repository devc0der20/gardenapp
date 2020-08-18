Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  get '/gardens', to: "gardens#index"
  get '/gardens/:id', to: "gardens#show"
  get '/gardens/:id/bookings/new', to: "bookings#new"
  get '/bookings/:id', to: "bookings#show"
  post '/gardens/:id/bookings/', to: "bookings#create"
end

Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  post 'check_password', to: 'pages#check_password'
  get 'success', to: 'pages#success'
  get 'failure', to: 'pages#failure'
end

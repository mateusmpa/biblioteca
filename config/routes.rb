Rails.application.routes.draw do

 # root 'dashboard#index'
 # get 'logout', to: 'dashboard#logout'

  root 'books#index'
  resources :books
  resources :comments
  resources :summaries



end

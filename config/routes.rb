Rails.application.routes.draw do

 # root 'dashboard#index'
 # get 'logout', to: 'dashboard#logout'

  root 'books#index'
  resources :books, only: [:index, :show, :new, :edit]
  resources :comments
  resources :summaries
end

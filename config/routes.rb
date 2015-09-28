Rails.application.routes.draw do
  root 'books#index'
  resources :books, only: [:index, :show]
  resources :comments
  resources :summaries


end
Rails.application.routes.draw do
  root 'books#index'
  resources :books, only: [:index, :show, :new, :create, :edit, :update]
  resources :comments
  resources :summaries


end

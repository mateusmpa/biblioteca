Rails.application.routes.draw do
  root 'books#index'
  resources :books, only: [:index, :show, :new, :edit]
  resources :comments
  resources :summaries
end

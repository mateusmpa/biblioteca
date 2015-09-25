Rails.application.routes.draw do
  resources :comments
  resources :summaries
  get "pages/index"


end

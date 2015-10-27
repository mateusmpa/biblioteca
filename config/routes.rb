Rails.application.routes.draw do

 # root 'dashboard#index'
 # get 'logout', to: 'dashboard#logout'

  root 'dashboard#index'
  resources :books
  resources :comments
  resources :summaries
  resources :dashboard

  resources :settings do
    collection do
        get '/smtp', to: 'settings#config_smtp'
    end
  end


end

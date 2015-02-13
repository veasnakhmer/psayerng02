Rails.application.routes.draw do
 
  get 'password_resets/new'

  get 'password_reset/edit'

  get 'password_resets/edit'

  #get 'password_reset/new'

  get 'products/sell_other'

  get 'products/sell_bicycle'

  get 'products/sell_phone'

  get 'products/sell_computer'

  get 'products/sell_moto'

  get 'products/sell_car'

  get 'products/sell_land'

  get 'products/sell_house'

  resources :products

  get 'users/logout'

  get 'sessions/home'

  devise_for :users
  resources :entries

  #get 'users/home'

  #match "*path" => "users#logged", via: [:get, :post] 
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "home" => "sessions#destroy", :as => "home"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "products#index"
  #root :to => "users#new"
  resources :users
  resources :sessions
  resources :password_resets
  
end

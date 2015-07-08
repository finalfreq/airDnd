Rails.application.routes.draw do
  devise_for :users

  root 'units#index'

  resources :users
  resources :units do
    resources :reservations, :except => [:show, :index]
    resources :photos
  end

  resources :reservations, :only => [:show, :index]

end

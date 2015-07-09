Rails.application.routes.draw do
  devise_for :users, :except => [:show, :index]

  root 'units#index'

  resources :users, :only => [:show, :index]
  resources :units do
    resources :reservations, :except => [:show, :index]
    resources :photos
  end

  resources :reservations, :only => [:show, :index]

end

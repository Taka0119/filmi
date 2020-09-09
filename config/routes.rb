Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'home#index'

  resources :users, only: [:show, :edit, :update, :destroy]
  
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end

Rails.application.routes.draw do
  root 'site#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users, only: [:edit, :update]
end

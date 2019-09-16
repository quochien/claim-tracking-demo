Rails.application.routes.draw do
  root 'home#index'

  resources :claims, only: [:new, :create, :show]
end

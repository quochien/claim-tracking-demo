Rails.application.routes.draw do
  root 'home#index'

  resources :claims, only: [:new, :create, :show]

  namespace :admin do
    resources :claims, only: [:index, :edit, :update]
  end
end

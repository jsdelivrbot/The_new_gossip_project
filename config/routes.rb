Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
      get 'register', to: 'devise/registrations#new', as: :register
      get 'login', to: 'devise/sessions#new', as: :login
      get 'logout', to: 'devise/sessions#destroy', as: :logout
      get 'edit', to: 'devise/registrations#edit', as: :edit
    end
  root "static_pages#home"
  resources :gossips
  get "gossips/new"
  get "gossips/index"
end

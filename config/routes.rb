Rails.application.routes.draw do
  passwordless_for :users
  
  get '/success_page_test', to: 'pages#success_page_test' # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tickets, only: [:index, :new, :create] do
    resources :users, only: [:index, :new, :create]
  end
  
  root to: 'pages#home'
  get '/components_test', to: 'pages#components_test'
  
  get '/success', to: 'pages#success'

  get '/users/sign_in'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

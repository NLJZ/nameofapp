Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "user_registrations" }                                   
  resources :users

  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/orders'
  get 'simple_pages/landing_page'
  post 'simple_pages/thank_you'
  root 'simple_pages#index'
  post 'payments/create'

  resources :products do
    resources :comments
  end

  resources :orders, only: [:index, :show, :create, :destroy]

  mount ActionCable.server => '/cable'
  
end

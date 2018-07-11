Rails.application.routes.draw do
  resources :products
  get 'simple_pages/about'
  get 'simple_pages/contact'
  root 'simple_pages#landing_page'
  resources :orders, only: [:index, :show, :create, :destroy]
end

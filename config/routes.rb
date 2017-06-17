Rails.application.routes.draw do
  resources :orders
  resources :food_items
  root 'home#index'
  get 'home/index'
  get 'menu'            => 'home#menu'
  get 'home/contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

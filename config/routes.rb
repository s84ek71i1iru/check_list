Rails.application.routes.draw do

  root 'static_pages#welcome'

  get 'static_pages/welcome'
  get 'user_items/index'

  resources :users
  resources :items
  resources :channels
end

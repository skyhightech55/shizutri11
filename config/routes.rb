Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/edit'
  devise_for :users
  root to: "home#index"
  resources :users
  resources :plans
  resources :categories
end

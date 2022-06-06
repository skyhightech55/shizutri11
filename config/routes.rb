Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/edit'
  devise_for :users
  root to: "home#index"
  resources :users
  resources :plans
  resources :categories
  get 'get_category/children', to: 'plans#get_category_children', defaults: { format: 'json' }
  get 'get_category/grandchildren', to: 'plans#get_category_grandchildren', defaults: { format: 'json' }
end

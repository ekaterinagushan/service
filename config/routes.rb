Rails.application.routes.draw do
  resources :parameters
  resources :product_attentions
  resources :actual_dangers
  resources :structures
  resources :ingredients
  resources :categories
  resources :products
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :products, :categories
  
  root to: 'products#index'
end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :orders
  resources :drivers, only: [:index, :show]

  resources :materials, only: [:index, :show]
  resources :suppliers, only: [:index, :show]
  resources :baskets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end

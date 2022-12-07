Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
<<<<<<< HEAD
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
=======

  resources :orders
  resources :drivers, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :materials, only: [:index, :show]
    resources :suppliers, only: [:index, :show]
>>>>>>> 73895141711a927486d61616b1586e4df532de4d
  # Defines the root path route ("/")
  # root "articles#index"

  resources :drivers, only: [:index, :show]
  resources :materials, only: [:index, :show] do
    resources :suppliers
  end
  resources :baskets
end

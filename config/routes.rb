Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :drivers, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :materials, only: [:index, :show]
    resources :suppliers, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
end

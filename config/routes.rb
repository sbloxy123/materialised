Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :orders do
    resources :payments, only: :new
  end
  resources :drivers, only: [:index, :show]

  resources :materials, only: [:index, :show]
  # resources :materials do
  #   resources :materials, only: [:new]
  # end
  resources :suppliers, only: [:index, :show]
  resources :baskets, only: [:index, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  mount StripeEvent::Engine, at: 'https://www.materialised.shop/stripe-webhooks'
end

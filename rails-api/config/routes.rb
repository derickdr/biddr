Rails.application.routes.draw do
    get 'bids/new'
    get 'users/new'
    get 'auctions/index'
    get 'auctions/new'
    get 'home/index'
    root to: 'home#index'
    get 'sign_up', to: 'users#new'
    get 'sign_in', to: 'sessions#new'
    get 'sign_out', to: 'sessions#destroy'
    get 'sessions', to: 'sessions#new'
    get 'auctions', to: 'auctions#index'

    resources :users, only: [:new, :create]
    resources :bids
    post 'auctions/new'

    resources :auctions, only: [:new, :create, :show, :index]
    resources :sessions, only: [:new, :create, :destroy]

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

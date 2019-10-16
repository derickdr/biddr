Rails.application.routes.draw do
    get 'bids/new'
    get 'users/new'
    get 'auctions/new'
    get 'home/index'
    get 'sign_up', to: 'users#new'
    get 'sign_in', to: 'sessions#new'
    root to: 'home#index'

    resources :users
    resources :bids
    resources :auctions
    resources :sessions

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "pages#home"
  resources :chef_offers, only: [ :index, :new, :show ] do
    resources :bookings, only: [ :create ]
  end
  resources :bookings, only: [:destroy]
  get '/profile', to: "pages#profile", as: :profile

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :chef_offers, only: [ :index, :new, :show ] do
    resources :bookings, only: [ :new, :index ]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "photos#index"

  devise_for :users

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  # resources :users, only: :show
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/:username" => "users#show", as: :user
end

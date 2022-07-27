Rails.application.routes.draw do
  resources :banned_users
  resources :bans
  resources :favorite_publications
  resources :favorite_authors
  resources :publication_ratings
  resources :author_ratings
  resources :writtens
  resources :reviews
  resources :comments
  resources :authors
  resources :publications
  resources :administrators
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#new"
end

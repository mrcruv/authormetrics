Rails.application.routes.draw do
 
  resources :users do 
    resources :favorite_publications
    resources :favorite_authors
    resources :reviews
  end
  resources :authors do
    resources :publications
    resources :author_ratings
  end
  resources :publications do
    resources :publication_ratings
    resources :comments
    resources :writtens
  end
  resources :administrators
  resources :banned_users
  resources :bans
  
  
  
  
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#new"
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"

end

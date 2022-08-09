Rails.application.routes.draw do
 
  #devise_for :users
  #devise_scope :user do
  #  authenticated :user do
  #    root :to => 'users#index', as: :authenticated_root
  #  end
  #  unauthenticated :user do
  #    root :to => 'devise/registrations#new', as: :unauthenticated_root
  #  end
  #  get '/users/sign_out' => 'devise/sessions#destroy'
  #end
  
  


  

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
  get "/", to: "users#index"
  get "/users/:id", to: "users#show"


end

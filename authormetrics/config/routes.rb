Rails.application.routes.draw do
  resources :cited_bies
 
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
   resources :favorite_publications, only: %i[ index new show create destroy ]
   resources :favorite_authors,only: %i[ index new show create destroy ]
  end
  resources :authors do
    resources :publications, only: %i[ index show ]
    resources :author_ratings
    resources :reviews
  end
  resources :publications do
    resources :publication_ratings
    resources :comments
  end

  resources :administrators
  resources :banned_users
  resources :bans

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  get "/", to: "home#index"
  get "/contacts",to:"home#contacts"
  get "/info", to: "home#info"
  get "/use_and_conditions", to:"home#use_and_conditions"
  get "/privacy", to: "home#privacy"
  get "/cookies", to: "home#cookies"
  get "/users/:id", to: "users#show"


end

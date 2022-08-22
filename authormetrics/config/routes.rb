Rails.application.routes.draw do
  resources :cited_bies
 
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root :to => 'users#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'home#index', as: :unauthenticated_root
    end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :users do 
   resources :favorite_publications, only: %i[ index new show create destroy ]
   resources :favorite_authors,only: %i[ index new show create destroy ]
  end
  resources :authors, only: %i[ show index] do
    resources :author_ratings
    resources :reviews
  end
  resources :publications, only: %i[ index show ] do
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
  
  get "/authors/search/:search", to: "authors#search"
  get "/publications/search/:search", to: "publications#search"

end

Rails.application.routes.draw do
  
  
  
  devise_for :administrators
  resources :cited_bies
 
  # devise_for :users
  devise_for :users, :controllers => {registrations: "users/registrations", sessions: "users/sessions",
    :omniauth_callbacks => "users/omniauth_callbacks"}
  # get "auth/facebook/callback", to: "omniauth_callbacks#facebook"

  devise_scope :user do
    authenticated :user do
      root :to => 'home#index', as: :authenticated_user
    end
    unauthenticated :user do
      root :to => 'home#index', as: :unauthenticated_user
    end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_scope :administrator do
    authenticated :administrator do
      root :to => 'administrators#index', as: :authenticated_admin
    end
    unauthenticated :administrator do
      root :to => 'home#index', as: :unauthenticated_admin
    end
    get '/administrators/sign_out' => 'devise/sessions#destroy'
  end

  root "home#index"
  
  resources :users, only: %i[ index new show create ] do 
   resources :favorite_publications, only: %i[ index new show create destroy ]
   resources :favorite_authors,only: %i[ index new show create destroy ]
  end
  resources :authors, only: %i[ show index] do
    resources :author_ratings
    resources :reviews
  end
  resources :publications, only: %i[show index] do
    resources :publication_ratings
    resources :comments
  end

  resources :administrators
  resources :banned_users
  resources :bans

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  get "/", to: "home#index", as: :home
  get "/contacts",to:"home#contacts"
  get "/info", to: "home#info"
  get "/use_and_conditions", to:"home#use_and_conditions"
  get "/privacy", to: "home#privacy"
  get "/cookies", to: "home#cookies"
  get "/users/:id", to: "users#show" 
  get "/dashboard", to: "dashboard#index" 
  get "/control_panel", to: "control_panel#index"
  
  get "/authors/search/:search", to: "authors#search"
  get "/publications/search/:search", to: "publications#search"
  get "/authors/:id/search_pub_by_auth/:search", to: "authors#search_pub", as: :author_search_pub
  delete "/authors/:author_id/author_ratings/:id", to: "author_ratings#destroy", as: :destroy_author_author_rating
  delete "/users/:user_id/favorite_authors/:id", to: "favorite_authors#destroy", as: :destroy_favorite_author
  delete "/publications/:publication_id/publication_ratings/:id", to: "publication_ratings#destroy", as: :destroy_publication_publication_rating
  
  delete "/publications/:publication_id/comments/:id", to: "comments#destroy", as: :destroy_publication_comment
  delete "/authors/:author_id/reviews/:id", to: "reviews#destroy", as: :destroy_author_review
  
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  match '*unmatched', to: 'application#route_not_found', via: :all
  
end

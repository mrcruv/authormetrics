Rails.application.routes.draw do
  resources :utenti
  resources :scritti
  resources :recensioni_autori
  resources :rating_autori
  resources :rating_articoli
  resources :commenti
  resources :autori_preferiti
  resources :authors
  resources :articoli_preferiti
  resources :articoli
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
